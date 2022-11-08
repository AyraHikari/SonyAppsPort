.class public Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;
.super Ljava/lang/Object;
.source "SmartPlaylistUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/common/SmartPlaylistUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmartPlaylistProperties"
.end annotation


# instance fields
.field private final mContainerUri:Landroid/net/Uri;

.field private final mLimit:I

.field private final mOrderBy:Ljava/lang/String;

.field private final mProjection:[Ljava/lang/String;

.field private final mTracksUri:Landroid/net/Uri;

.field private final mWhere:Ljava/lang/String;

.field private final mWhereArgs:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILandroid/net/Uri;)V
    .locals 0

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    iput-object p1, p0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->mTracksUri:Landroid/net/Uri;

    .line 314
    iput-object p2, p0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->mProjection:[Ljava/lang/String;

    .line 315
    iput-object p3, p0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->mWhere:Ljava/lang/String;

    .line 316
    iput-object p4, p0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->mWhereArgs:[Ljava/lang/String;

    .line 317
    iput-object p5, p0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->mOrderBy:Ljava/lang/String;

    .line 318
    iput p6, p0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->mLimit:I

    .line 319
    iput-object p7, p0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->mContainerUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    .line 308
    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;-><init>(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILandroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public getContainerUri()Landroid/net/Uri;
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->mContainerUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getLimit()I
    .locals 1

    .line 350
    iget v0, p0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->mLimit:I

    return v0
.end method

.method public getOrderBy()Ljava/lang/String;
    .locals 2

    .line 339
    invoke-virtual {p0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->hasLimit()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 342
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->mOrderBy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " LIMIT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->mLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 340
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->mOrderBy:Ljava/lang/String;

    return-object v0
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->mProjection:[Ljava/lang/String;

    return-object v0
.end method

.method public getTracksUri()Landroid/net/Uri;
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->mTracksUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getWhere()Ljava/lang/String;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->mWhere:Ljava/lang/String;

    return-object v0
.end method

.method public getWhereArgs()[Ljava/lang/String;
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->mWhereArgs:[Ljava/lang/String;

    return-object v0
.end method

.method public hasLimit()Z
    .locals 1

    .line 354
    iget v0, p0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->mLimit:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
