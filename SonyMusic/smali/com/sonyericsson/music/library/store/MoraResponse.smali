.class public Lcom/sonyericsson/music/library/store/MoraResponse;
.super Lcom/sonyericsson/music/library/store/StoreResponse;
.source "MoraResponse.java"


# static fields
.field private static final MEDIA_FORMAT_DSD:I = 0xd

.field private static final MEDIA_FORMAT_FLAC:I = 0xc


# instance fields
.field private mMaxSize:I

.field mRankingLists:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rankingList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/library/store/RankingList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/sonyericsson/music/library/store/StoreResponse;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/sonyericsson/music/library/store/MoraResponse;->mMaxSize:I

    return-void
.end method


# virtual methods
.method public getArtist(I)Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/sonyericsson/music/library/store/MoraResponse;->mRankingLists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/library/store/RankingList;

    iget-object p1, p1, Lcom/sonyericsson/music/library/store/RankingList;->mArtistName:Ljava/lang/String;

    return-object p1
.end method

.method public getFullSizeImage(I)Ljava/lang/String;
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/sonyericsson/music/library/store/MoraResponse;->mRankingLists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/library/store/RankingList;

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/sonyericsson/music/library/store/RankingList;->mPackageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/sonyericsson/music/library/store/RankingList;->mFullSizeImage:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLaunchIntent(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 3

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "jp.co.labelgate.moratouch"

    .line 47
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "android.intent.action.MAIN"

    .line 49
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.LAUNCHER"

    .line 50
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 51
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "mora:///web_page"

    .line 52
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "url"

    iget-object v2, p0, Lcom/sonyericsson/music/library/store/MoraResponse;->mRankingLists:Ljava/util/List;

    .line 53
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/music/library/store/RankingList;

    iget-object v2, v2, Lcom/sonyericsson/music/library/store/RankingList;->mPackagePageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "cpid"

    const-string v2, "sony.musicapp"

    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "materialno"

    iget-object v2, p0, Lcom/sonyericsson/music/library/store/MoraResponse;->mRankingLists:Ljava/util/List;

    .line 55
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/music/library/store/RankingList;

    iget-object v2, v2, Lcom/sonyericsson/music/library/store/RankingList;->mMaterialNo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "packageurl"

    iget-object v2, p0, Lcom/sonyericsson/music/library/store/MoraResponse;->mRankingLists:Ljava/util/List;

    .line 56
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/music/library/store/RankingList;

    iget-object p2, p2, Lcom/sonyericsson/music/library/store/RankingList;->mPackageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    const-string v0, "index"

    const-string v1, "package"

    .line 57
    invoke-virtual {p2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    const-string v0, "cpid"

    const-string v1, "sony.musicapp"

    .line 58
    invoke-virtual {p2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    .line 59
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    .line 61
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.VIEW"

    const-string v0, "https://play.google.com/store/apps/details?id=jp.co.labelgate.moratouch"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :goto_0
    return-object p1
.end method

.method public getSize()I
    .locals 2

    .line 69
    iget v0, p0, Lcom/sonyericsson/music/library/store/MoraResponse;->mMaxSize:I

    if-lez v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/sonyericsson/music/library/store/MoraResponse;->mRankingLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/sonyericsson/music/library/store/MoraResponse;->mMaxSize:I

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/library/store/MoraResponse;->mRankingLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    return v1

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/music/library/store/MoraResponse;->mRankingLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTitle(I)Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/sonyericsson/music/library/store/MoraResponse;->mRankingLists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/library/store/RankingList;

    iget-object p1, p1, Lcom/sonyericsson/music/library/store/RankingList;->mTitle:Ljava/lang/String;

    return-object p1
.end method

.method public getWebLink(I)Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/sonyericsson/music/library/store/MoraResponse;->mRankingLists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/library/store/RankingList;

    iget-object p1, p1, Lcom/sonyericsson/music/library/store/RankingList;->mPackagePageUrl:Ljava/lang/String;

    return-object p1
.end method

.method public getWebListSizeImage(I)Ljava/lang/String;
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/sonyericsson/music/library/store/MoraResponse;->mRankingLists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/library/store/RankingList;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/sonyericsson/music/library/store/RankingList;->mPackageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/sonyericsson/music/library/store/RankingList;->mWebListSizeImage:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isHighResolution(I)Z
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/sonyericsson/music/library/store/MoraResponse;->mRankingLists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/library/store/RankingList;

    iget v0, v0, Lcom/sonyericsson/music/library/store/RankingList;->mMediaFormatNo:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/music/library/store/MoraResponse;->mRankingLists:Ljava/util/List;

    .line 88
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/library/store/RankingList;

    iget p1, p1, Lcom/sonyericsson/music/library/store/RankingList;->mMediaFormatNo:I

    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public setMaxSize(I)V
    .locals 0

    .line 93
    iput p1, p0, Lcom/sonyericsson/music/library/store/MoraResponse;->mMaxSize:I

    return-void
.end method
