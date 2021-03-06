.class public Landroid/util/DayOfMonthCursor;
.super Landroid/util/MonthDisplayHelper;
.source "DayOfMonthCursor.java"


# instance fields
.field private mColumn:I

.field private mRow:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 1
    .parameter "year"
    .parameter "month"
    .parameter "dayOfMonth"
    .parameter "weekStartDay"

    .prologue
    invoke-direct {p0, p1, p2, p4}, Landroid/util/MonthDisplayHelper;-><init>(III)V

    invoke-virtual {p0, p3}, Landroid/util/MonthDisplayHelper;->getRowOf(I)I

    move-result v0

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    invoke-virtual {p0, p3}, Landroid/util/MonthDisplayHelper;->getColumnOf(I)I

    move-result v0

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    return-void
.end method


# virtual methods
.method public down()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v1, v2}, Landroid/util/MonthDisplayHelper;->isWithinCurrentMonth(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/util/MonthDisplayHelper;->nextMonth()V

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    :goto_1
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    iget v1, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v1}, Landroid/util/MonthDisplayHelper;->isWithinCurrentMonth(II)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getSelectedColumn()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    return v0
.end method

.method public getSelectedDayOfMonth()I
    .locals 2

    .prologue
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    iget v1, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v1}, Landroid/util/MonthDisplayHelper;->getDayAt(II)I

    move-result v0

    return v0
.end method

.method public getSelectedMonthOffset()I
    .locals 2

    .prologue
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    iget v1, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v1}, Landroid/util/MonthDisplayHelper;->isWithinCurrentMonth(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    if-nez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getSelectedRow()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    return v0
.end method

.method public isSelected(II)Z
    .locals 1
    .parameter "row"
    .parameter "column"

    .prologue
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public left()Z
    .locals 3

    .prologue
    iget v1, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    if-nez v1, :cond_0

    iget v1, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    const/4 v1, 0x6

    iput v1, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    :goto_0
    iget v1, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    iget v2, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v1, v2}, Landroid/util/MonthDisplayHelper;->isWithinCurrentMonth(II)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_0
    iget v1, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/util/MonthDisplayHelper;->previousMonth()V

    invoke-virtual {p0}, Landroid/util/MonthDisplayHelper;->getNumberOfDaysInMonth()I

    move-result v0

    .local v0, lastDay:I
    invoke-virtual {p0, v0}, Landroid/util/MonthDisplayHelper;->getRowOf(I)I

    move-result v1

    iput v1, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    invoke-virtual {p0, v0}, Landroid/util/MonthDisplayHelper;->getColumnOf(I)I

    move-result v1

    iput v1, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    const/4 v1, 0x1

    goto :goto_1
.end method

.method public right()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    :goto_0
    iget v1, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    iget v2, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v1, v2}, Landroid/util/MonthDisplayHelper;->isWithinCurrentMonth(II)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    return v0

    :cond_0
    iget v1, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/util/MonthDisplayHelper;->nextMonth()V

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    :goto_2
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    iget v1, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v1}, Landroid/util/MonthDisplayHelper;->isWithinCurrentMonth(II)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    goto :goto_2

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public setSelectedDayOfMonth(I)V
    .locals 1
    .parameter "dayOfMonth"

    .prologue
    invoke-virtual {p0, p1}, Landroid/util/MonthDisplayHelper;->getRowOf(I)I

    move-result v0

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    invoke-virtual {p0, p1}, Landroid/util/MonthDisplayHelper;->getColumnOf(I)I

    move-result v0

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    return-void
.end method

.method public setSelectedRowColumn(II)V
    .locals 0
    .parameter "row"
    .parameter "col"

    .prologue
    iput p1, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    iput p2, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    return-void
.end method

.method public up()Z
    .locals 2

    .prologue
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v1}, Landroid/util/MonthDisplayHelper;->isWithinCurrentMonth(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/util/MonthDisplayHelper;->previousMonth()V

    const/4 v0, 0x5

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    :goto_1
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    iget v1, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v1}, Landroid/util/MonthDisplayHelper;->isWithinCurrentMonth(II)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
