.class public Lcom/sonyericsson/music/library/store/StorePage;
.super Ljava/lang/Object;
.source "StorePage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sonyericsson/music/library/store/StorePage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mStorePageContentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sonyericsson/music/library/store/StorePageContent;",
            ">;"
        }
    .end annotation
.end field

.field private mTitleResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/sonyericsson/music/library/store/StorePage$1;

    invoke-direct {v0}, Lcom/sonyericsson/music/library/store/StorePage$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/music/library/store/StorePage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/sonyericsson/music/library/store/StorePageContent;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/sonyericsson/music/library/store/StorePage;->mTitleResId:I

    .line 35
    iput-object p2, p0, Lcom/sonyericsson/music/library/store/StorePage;->mStorePageContentList:Ljava/util/ArrayList;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/library/store/StorePage;->mTitleResId:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/library/store/StorePage;->mStorePageContentList:Ljava/util/ArrayList;

    .line 50
    iget-object v0, p0, Lcom/sonyericsson/music/library/store/StorePage;->mStorePageContentList:Ljava/util/ArrayList;

    const-class v1, Lcom/sonyericsson/music/library/store/StorePageContent;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 52
    iput-object p1, p0, Lcom/sonyericsson/music/library/store/StorePage;->mStorePageContentList:Ljava/util/ArrayList;

    :goto_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getStorePageContent()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sonyericsson/music/library/store/StorePageContent;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/sonyericsson/music/library/store/StorePage;->mStorePageContentList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTitleResId()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/sonyericsson/music/library/store/StorePage;->mTitleResId:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 63
    iget p2, p0, Lcom/sonyericsson/music/library/store/StorePage;->mTitleResId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget-object p2, p0, Lcom/sonyericsson/music/library/store/StorePage;->mStorePageContentList:Ljava/util/ArrayList;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 65
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 67
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 68
    iget-object p2, p0, Lcom/sonyericsson/music/library/store/StorePage;->mStorePageContentList:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    :goto_0
    return-void
.end method
