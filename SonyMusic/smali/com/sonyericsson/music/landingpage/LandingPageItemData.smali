.class Lcom/sonyericsson/music/landingpage/LandingPageItemData;
.super Ljava/lang/Object;
.source "LandingPageItemData.java"


# instance fields
.field private mAlbumName:Ljava/lang/String;

.field private mAlbumUri:Landroid/net/Uri;

.field private mArtistName:Ljava/lang/String;

.field private mArtistUri:Landroid/net/Uri;

.field private mCategoryItemType:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

.field private mContainerArtUri:Landroid/net/Uri;

.field private mContainerData:Ljava/lang/String;

.field private mContainerId:J

.field private mContainerSubId:J

.field private mContainerSubTitle:Ljava/lang/String;

.field private mContainerTitle:Ljava/lang/String;

.field private mContainerUri:Landroid/net/Uri;

.field private mTrackName:Ljava/lang/String;

.field private mViewPosition:I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 34
    iput-wide v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->mContainerId:J

    .line 36
    iput-wide v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->mContainerSubId:J

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->mViewPosition:I

    return-void
.end method


# virtual methods
.method getAlbumName()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->mAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method getAlbumUri()Landroid/net/Uri;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->mAlbumUri:Landroid/net/Uri;

    return-object v0
.end method

.method getArtistName()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->mArtistName:Ljava/lang/String;

    return-object v0
.end method

.method getArtistUri()Landroid/net/Uri;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->mArtistUri:Landroid/net/Uri;

    return-object v0
.end method

.method getCategoryItemType()Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->mCategoryItemType:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    return-object v0
.end method

.method getContainerArtUri()Landroid/net/Uri;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->mContainerArtUri:Landroid/net/Uri;

    return-object v0
.end method

.method getContainerData()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->mContainerData:Ljava/lang/String;

    return-object v0
.end method

.method getContainerId()J
    .locals 2

    .line 106
    iget-wide v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->mContainerId:J

    return-wide v0
.end method

.method getContainerSubId()J
    .locals 2

    .line 114
    iget-wide v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->mContainerSubId:J

    return-wide v0
.end method

.method getContainerSubTitle()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->mContainerSubTitle:Ljava/lang/String;

    return-object v0
.end method

.method getContainerTitle()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->mContainerTitle:Ljava/lang/String;

    return-object v0
.end method

.method getContainerUri()Landroid/net/Uri;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->mContainerUri:Landroid/net/Uri;

    return-object v0
.end method

.method getItemViewPosition()I
    .locals 1

    .line 146
    iget v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->mViewPosition:I

    return v0
.end method

.method getTrackName()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->mTrackName:Ljava/lang/String;

    return-object v0
.end method

.method setAlbumName(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->mAlbumName:Ljava/lang/String;

    return-void
.end method

.method setAlbumUri(Landroid/net/Uri;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->mAlbumUri:Landroid/net/Uri;

    return-void
.end method

.method setArtistName(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->mArtistName:Ljava/lang/String;

    return-void
.end method

.method setArtistUri(Landroid/net/Uri;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->mArtistUri:Landroid/net/Uri;

    return-void
.end method

.method setCategoryItemType(Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->mCategoryItemType:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    return-void
.end method

.method setContainerArtUri(Landroid/net/Uri;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->mContainerArtUri:Landroid/net/Uri;

    return-void
.end method

.method setContainerData(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->mContainerData:Ljava/lang/String;

    return-void
.end method

.method setContainerId(J)V
    .locals 0

    .line 102
    iput-wide p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->mContainerId:J

    return-void
.end method

.method setContainerSubId(J)V
    .locals 0

    .line 110
    iput-wide p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->mContainerSubId:J

    return-void
.end method

.method setContainerSubTitle(Ljava/lang/String;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->mContainerSubTitle:Ljava/lang/String;

    return-void
.end method

.method setContainerTitle(Ljava/lang/String;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->mContainerTitle:Ljava/lang/String;

    return-void
.end method

.method setContainerUri(Landroid/net/Uri;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->mContainerUri:Landroid/net/Uri;

    return-void
.end method

.method setItemViewPosition(I)V
    .locals 0

    .line 142
    iput p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->mViewPosition:I

    return-void
.end method

.method setTrackName(Ljava/lang/String;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->mTrackName:Ljava/lang/String;

    return-void
.end method
