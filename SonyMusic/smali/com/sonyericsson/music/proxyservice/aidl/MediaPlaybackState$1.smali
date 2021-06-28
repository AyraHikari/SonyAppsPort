.class final Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$1;
.super Ljava/lang/Object;
.source "MediaPlaybackState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;
    .locals 2

    .line 50
    new-instance v0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;-><init>(Landroid/os/Parcel;Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;
    .locals 0

    .line 54
    new-array p1, p1, [Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$1;->newArray(I)[Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object p1

    return-object p1
.end method
