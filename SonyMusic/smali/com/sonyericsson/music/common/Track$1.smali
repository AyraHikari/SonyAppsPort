.class final Lcom/sonyericsson/music/common/Track$1;
.super Ljava/lang/Object;
.source "Track.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/common/Track;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/sonyericsson/music/common/Track;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sonyericsson/music/common/Track;
    .locals 2

    .line 72
    new-instance v0, Lcom/sonyericsson/music/common/Track;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/music/common/Track;-><init>(Landroid/os/Parcel;Lcom/sonyericsson/music/common/Track$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 70
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/common/Track$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sonyericsson/music/common/Track;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/sonyericsson/music/common/Track;
    .locals 0

    .line 76
    new-array p1, p1, [Lcom/sonyericsson/music/common/Track;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 70
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/common/Track$1;->newArray(I)[Lcom/sonyericsson/music/common/Track;

    move-result-object p1

    return-object p1
.end method
