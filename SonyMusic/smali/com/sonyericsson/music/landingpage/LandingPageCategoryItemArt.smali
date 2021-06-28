.class Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;
.super Ljava/lang/Object;
.source "LandingPageCategoryItemArt.java"


# instance fields
.field private final mArtCacheHashCode:I

.field private mArtUri:Landroid/net/Uri;

.field private final mDefaultId:I

.field private final mGenerativeArtworkString:Ljava/lang/String;

.field private final mImageViewIdentifier:I

.field private mUriProcessor:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$AsyncUriProcessor;


# direct methods
.method constructor <init>(Landroid/net/Uri;Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$AsyncUriProcessor;JLjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;->mArtUri:Landroid/net/Uri;

    .line 25
    invoke-direct {p0, p5}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;->generateIdentifier(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;->mArtCacheHashCode:I

    .line 26
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    if-eqz p5, :cond_0

    .line 27
    invoke-virtual {p5}, Ljava/lang/String;->hashCode()I

    move-result p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 26
    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;->generateImageViewIdentifier(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;->mImageViewIdentifier:I

    .line 28
    iput-object p2, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;->mUriProcessor:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$AsyncUriProcessor;

    .line 29
    iput-object p6, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;->mGenerativeArtworkString:Ljava/lang/String;

    .line 30
    iput p7, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;->mDefaultId:I

    return-void
.end method

.method private generateIdentifier(Ljava/lang/String;)I
    .locals 0

    if-eqz p1, :cond_0

    .line 34
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private generateImageViewIdentifier(Ljava/lang/String;I)I
    .locals 0

    .line 38
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    add-int/lit8 p1, p1, 0x1f

    mul-int/lit8 p1, p1, 0x1f

    add-int/2addr p1, p2

    return p1
.end method


# virtual methods
.method public finalizeArtUri(Landroid/net/Uri;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;->mArtUri:Landroid/net/Uri;

    const/4 p1, 0x0

    .line 50
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;->mUriProcessor:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$AsyncUriProcessor;

    return-void
.end method

.method public getArtCacheHashCode()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;->mArtCacheHashCode:I

    return v0
.end method

.method public getArtUri()Landroid/net/Uri;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;->mArtUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getDefaultArtId()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;->mDefaultId:I

    return v0
.end method

.method public getGenerativeArtworkString()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;->mGenerativeArtworkString:Ljava/lang/String;

    return-object v0
.end method

.method public getImageViewIdentifier()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;->mImageViewIdentifier:I

    return v0
.end method

.method public getUriProcessor()Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$AsyncUriProcessor;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;->mUriProcessor:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$AsyncUriProcessor;

    return-object v0
.end method
