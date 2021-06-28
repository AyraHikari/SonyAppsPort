.class final Lcom/sonyericsson/music/library/store/StorePage$1;
.super Ljava/lang/Object;
.source "StorePage.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/store/StorePage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/sonyericsson/music/library/store/StorePage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sonyericsson/music/library/store/StorePage;
    .locals 1

    .line 23
    new-instance v0, Lcom/sonyericsson/music/library/store/StorePage;

    invoke-direct {v0, p1}, Lcom/sonyericsson/music/library/store/StorePage;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/library/store/StorePage$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sonyericsson/music/library/store/StorePage;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/sonyericsson/music/library/store/StorePage;
    .locals 0

    .line 28
    new-array p1, p1, [Lcom/sonyericsson/music/library/store/StorePage;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/library/store/StorePage$1;->newArray(I)[Lcom/sonyericsson/music/library/store/StorePage;

    move-result-object p1

    return-object p1
.end method
