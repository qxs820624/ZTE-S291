.class final Landroid/net/wifi/BatchedScanSettings$1;
.super Ljava/lang/Object;
.source "BatchedScanSettings.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/BatchedScanSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/wifi/BatchedScanSettings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/BatchedScanSettings;
    .locals 5
    .parameter "in"

    .prologue
    new-instance v2, Landroid/net/wifi/BatchedScanSettings;

    invoke-direct {v2}, Landroid/net/wifi/BatchedScanSettings;-><init>()V

    .local v2, settings:Landroid/net/wifi/BatchedScanSettings;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, channelCount:I
    if-lez v0, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v2, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    move v1, v0

    .end local v0           #channelCount:I
    .local v1, channelCount:I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1           #channelCount:I
    .restart local v0       #channelCount:I
    if-lez v1, :cond_0

    iget-object v3, v2, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v1, v0

    .end local v0           #channelCount:I
    .restart local v1       #channelCount:I
    goto :goto_0

    .end local v1           #channelCount:I
    .restart local v0       #channelCount:I
    :cond_0
    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/BatchedScanSettings$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/BatchedScanSettings;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/BatchedScanSettings;
    .locals 1
    .parameter "size"

    .prologue
    new-array v0, p1, [Landroid/net/wifi/BatchedScanSettings;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/BatchedScanSettings$1;->newArray(I)[Landroid/net/wifi/BatchedScanSettings;

    move-result-object v0

    return-object v0
.end method
