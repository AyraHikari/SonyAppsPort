.class Lcom/sonyericsson/music/landingpage/CategoryLoader;
.super Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;
.source "CategoryLoader.java"


# instance fields
.field private final mUpperLimit:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 10

    const/4 v9, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 20
    invoke-direct/range {v0 .. v9}, Lcom/sonyericsson/music/landingpage/CategoryLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 0

    .line 29
    invoke-direct/range {p0 .. p8}, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 32
    iput p9, p0, Lcom/sonyericsson/music/landingpage/CategoryLoader;->mUpperLimit:I

    return-void
.end method


# virtual methods
.method public getUpperLimit()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/sonyericsson/music/landingpage/CategoryLoader;->mUpperLimit:I

    return v0
.end method

.method public playlistArtChanged(Landroid/net/Uri;)V
    .locals 1

    .line 37
    invoke-super {p0, p1}, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->playlistArtChanged(Landroid/net/Uri;)V

    .line 38
    invoke-static {}, Lcom/sonyericsson/music/landingpage/LandingPageArtUriCache;->getInstance()Lcom/sonyericsson/music/landingpage/LandingPageArtUriCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/landingpage/LandingPageArtUriCache;->removeFromCache(Landroid/net/Uri;)V

    return-void
.end method
