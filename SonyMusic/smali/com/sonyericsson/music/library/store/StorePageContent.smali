.class Lcom/sonyericsson/music/library/store/StorePageContent;
.super Ljava/lang/Object;
.source "StorePageContent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/library/store/StorePageContent$ContentType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sonyericsson/music/library/store/StorePageContent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContentType:Lcom/sonyericsson/music/library/store/StorePageContent$ContentType;

.field private mTitleResId:I

.field private mUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/sonyericsson/music/library/store/StorePageContent$1;

    invoke-direct {v0}, Lcom/sonyericsson/music/library/store/StorePageContent$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/music/library/store/StorePageContent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/library/store/StorePageContent;->mUri:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/library/store/StorePageContent;->mTitleResId:I

    .line 47
    const-class v0, Lcom/sonyericsson/music/library/store/StorePageContent$ContentType;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/library/store/StorePageContent$ContentType;

    iput-object p1, p0, Lcom/sonyericsson/music/library/store/StorePageContent;->mContentType:Lcom/sonyericsson/music/library/store/StorePageContent$ContentType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/sonyericsson/music/library/store/StorePageContent$ContentType;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/sonyericsson/music/library/store/StorePageContent;->mUri:Ljava/lang/String;

    .line 40
    iput p2, p0, Lcom/sonyericsson/music/library/store/StorePageContent;->mTitleResId:I

    .line 41
    iput-object p3, p0, Lcom/sonyericsson/music/library/store/StorePageContent;->mContentType:Lcom/sonyericsson/music/library/store/StorePageContent$ContentType;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getContentType()Lcom/sonyericsson/music/library/store/StorePageContent$ContentType;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/sonyericsson/music/library/store/StorePageContent;->mContentType:Lcom/sonyericsson/music/library/store/StorePageContent$ContentType;

    return-object v0
.end method

.method public getTitleResId()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/sonyericsson/music/library/store/StorePageContent;->mTitleResId:I

    return v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/sonyericsson/music/library/store/StorePageContent;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 57
    iget-object p2, p0, Lcom/sonyericsson/music/library/store/StorePageContent;->mUri:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget p2, p0, Lcom/sonyericsson/music/library/store/StorePageContent;->mTitleResId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget-object p2, p0, Lcom/sonyericsson/music/library/store/StorePageContent;->mContentType:Lcom/sonyericsson/music/library/store/StorePageContent$ContentType;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method
