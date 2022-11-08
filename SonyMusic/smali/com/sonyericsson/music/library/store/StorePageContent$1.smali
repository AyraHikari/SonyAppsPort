.class Lcom/sonyericsson/music/library/store/StorePageContent$1;
.super Ljava/lang/Object;
.source "StorePageContent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/store/StorePageContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/sonyericsson/music/library/store/StorePageContent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sonyericsson/music/library/store/StorePageContent;
    .locals 1

    .line 29
    new-instance v0, Lcom/sonyericsson/music/library/store/StorePageContent;

    invoke-direct {v0, p1}, Lcom/sonyericsson/music/library/store/StorePageContent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/library/store/StorePageContent$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sonyericsson/music/library/store/StorePageContent;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/sonyericsson/music/library/store/StorePageContent;
    .locals 0

    .line 34
    new-array p1, p1, [Lcom/sonyericsson/music/library/store/StorePageContent;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/library/store/StorePageContent$1;->newArray(I)[Lcom/sonyericsson/music/library/store/StorePageContent;

    move-result-object p1

    return-object p1
.end method
