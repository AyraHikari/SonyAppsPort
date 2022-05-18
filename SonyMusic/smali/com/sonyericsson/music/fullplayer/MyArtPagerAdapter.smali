.class public Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;
.super Ljava/lang/Object;
.source "MyArtPagerAdapter.java"

# interfaces
.implements Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$ArtPagerObservable;,
        Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$PlayQueueAdapter;,
        Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$SingleTrackAdapter;,
        Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$EmptyAdapter;,
        Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$InnerAdapter;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentTrack:Lcom/sonyericsson/music/common/Track;

.field private mDefaultAlbumArt:Landroid/graphics/Bitmap;

.field private mEmptyInnerAdapter:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$InnerAdapter;

.field private mInPlayQueueMode:Z

.field private mInnerAdapter:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$InnerAdapter;

.field public final mNoContentMessageLine1:Ljava/lang/String;

.field private final mObservable:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$ArtPagerObservable;

.field private mPendingDecodeRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sonyericsson/music/player/PlayerArtDecoder$OnPlayerArtListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayQueueCursor:Landroid/database/Cursor;

.field private mPlayQueueInnerAdapter:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$InnerAdapter;

.field private final mPlayerArtDecoder:Lcom/sonyericsson/music/player/PlayerArtDecoder;

.field private mSingleTrackInnerAdapter:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$InnerAdapter;

.field private mUserPosition:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/music/player/PlayerArtDecoder;)V
    .locals 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$ArtPagerObservable;

    invoke-direct {v0}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$ArtPagerObservable;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->mObservable:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$ArtPagerObservable;

    .line 59
    new-instance v0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$EmptyAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$EmptyAdapter;-><init>(Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$1;)V

    iput-object v0, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->mEmptyInnerAdapter:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$InnerAdapter;

    .line 61
    new-instance v0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$PlayQueueAdapter;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$PlayQueueAdapter;-><init>(Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$1;)V

    iput-object v0, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->mPlayQueueInnerAdapter:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$InnerAdapter;

    .line 63
    new-instance v0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$SingleTrackAdapter;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$SingleTrackAdapter;-><init>(Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$1;)V

    iput-object v0, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->mSingleTrackInnerAdapter:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$InnerAdapter;

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->mUserPosition:F

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->mPendingDecodeRequests:Ljava/util/ArrayList;

    .line 81
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->updateInnerAdapter()Z

    .line 82
    iput-object p2, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->mPlayerArtDecoder:Lcom/sonyericsson/music/player/PlayerArtDecoder;

    const p2, 0x7f100231

    .line 83
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->mNoContentMessageLine1:Ljava/lang/String;

    .line 84
    iput-object p1, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;Landroid/content/res/Resources;)Landroid/graphics/Bitmap;
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->getDefaultAlbumArt(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;)Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$ArtPagerObservable;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->mObservable:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$ArtPagerObservable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;)Lcom/sonyericsson/music/common/Track;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;)Landroid/database/Cursor;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->mPlayQueueCursor:Landroid/database/Cursor;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;)Lcom/sonyericsson/music/player/PlayerArtDecoder;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->mPlayerArtDecoder:Lcom/sonyericsson/music/player/PlayerArtDecoder;

    return-object p0
.end method

.method static synthetic access$800(Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->mPendingDecodeRequests:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$900(Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->mInPlayQueueMode:Z

    return p0
.end method

.method private getDefaultAlbumArt(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;
    .locals 1

    .line 218
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->mDefaultAlbumArt:Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    .line 220
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->mContext:Landroid/content/Context;

    const v0, 0x7f0801c1

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 222
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->mDefaultAlbumArt:Landroid/graphics/Bitmap;

    .line 224
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->mDefaultAlbumArt:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private positionChanged(Lcom/sonyericsson/music/common/Track;Lcom/sonyericsson/music/common/Track;)Z
    .locals 2

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-eqz p1, :cond_3

    if-nez p2, :cond_1

    goto :goto_0

    .line 198
    :cond_1
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result p1

    invoke-virtual {p2}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result p2

    if-eq p1, p2, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method private trackMetadataChanged(Lcom/sonyericsson/music/common/Track;Lcom/sonyericsson/music/common/Track;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/common/Track;->equalMetadata(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateInnerAdapter()Z
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->mInnerAdapter:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$InnerAdapter;

    .line 205
    iget-object v1, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->mInPlayQueueMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->mPlayQueueCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 206
    iget-object v1, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->mPlayQueueInnerAdapter:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$InnerAdapter;

    iput-object v1, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->mInnerAdapter:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$InnerAdapter;

    goto :goto_0

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v1, :cond_1

    .line 208
    iget-object v1, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->mSingleTrackInnerAdapter:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$InnerAdapter;

    iput-object v1, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->mInnerAdapter:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$InnerAdapter;

    goto :goto_0

    .line 210
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->mEmptyInnerAdapter:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$InnerAdapter;

    iput-object v1, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->mInnerAdapter:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$InnerAdapter;

    .line 212
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->mInnerAdapter:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$InnerAdapter;

    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method


# virtual methods
.method public createView(Landroid/content/Context;IILandroid/view/View;)Landroid/view/View;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->mInnerAdapter:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$InnerAdapter;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$InnerAdapter;->createView(Landroid/content/Context;IILandroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public destroyView(Landroid/content/Context;ILandroid/view/View;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->mInnerAdapter:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$InnerAdapter;

    invoke-interface {v0, p1, p2, p3}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$InnerAdapter;->destroyView(Landroid/content/Context;ILandroid/view/View;)V

    return-void
.end method

.method public getAlbumName(I)Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->mInnerAdapter:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$InnerAdapter;

    invoke-interface {v0, p1}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$InnerAdapter;->getAlbumName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getArtistName(I)Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->mInnerAdapter:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$InnerAdapter;

    invoke-interface {v0, p1}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$InnerAdapter;->getArtistName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->mInnerAdapter:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$InnerAdapter;

    invoke-interface {v0}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$InnerAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getId(I)Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->mInnerAdapter:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$InnerAdapter;

    invoke-interface {v0, p1}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$InnerAdapter;->getId(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPosition()I
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->mInnerAdapter:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$InnerAdapter;

    invoke-interface {v0}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$InnerAdapter;->getPosition()I

    move-result v0

    return v0
.end method

.method public getTrackName(I)Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->mInnerAdapter:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$InnerAdapter;

    invoke-interface {v0, p1}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$InnerAdapter;->getTrackName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUri(I)Landroid/net/Uri;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->mInnerAdapter:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$InnerAdapter;

    invoke-interface {v0, p1}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$InnerAdapter;->getUri(I)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public getUserPosition()F
    .locals 1

    .line 121
    iget v0, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->mUserPosition:F

    return v0
.end method

.method public isDefaultBlur(I)Z
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->mInnerAdapter:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$InnerAdapter;

    invoke-interface {v0, p1}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$InnerAdapter;->isDefaultBlur(I)Z

    move-result p1

    return p1
.end method

.method public notifyDataChanged()V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->mObservable:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$ArtPagerObservable;

    invoke-virtual {v0}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$ArtPagerObservable;->notifyDataChanged()V

    return-void
.end method

.method public registerObserver(Lcom/sonyericsson/music/fullplayer/ArtPagerObserver;)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->mObservable:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$ArtPagerObservable;

    invoke-virtual {v0, p1}, Landroid/database/Observable;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public setUserPosition(F)V
    .locals 0

    .line 110
    iput p1, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->mUserPosition:F

    .line 111
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->mObservable:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$ArtPagerObservable;

    invoke-virtual {p1}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$ArtPagerObservable;->notifyUserPositionChanged()V

    return-void
.end method

.method public swapState(Lcom/sonyericsson/music/player/PlayerState;)V
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->mPlayQueueCursor:Landroid/database/Cursor;

    .line 163
    iget-object v1, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 164
    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->isInPlayQueueMode()Z

    move-result v2

    iput-boolean v2, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->mInPlayQueueMode:Z

    .line 165
    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->getCurrentTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 166
    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->getPlayQueueCursor()Landroid/database/Cursor;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->mPlayQueueCursor:Landroid/database/Cursor;

    .line 168
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->updateInnerAdapter()Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->mInPlayQueueMode:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->mPlayQueueCursor:Landroid/database/Cursor;

    if-ne v0, p1, :cond_1

    :cond_0
    iget-boolean p1, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->mInPlayQueueMode:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 170
    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->trackMetadataChanged(Lcom/sonyericsson/music/common/Track;Lcom/sonyericsson/music/common/Track;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 171
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->mPendingDecodeRequests:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 172
    invoke-virtual {p0}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->getPosition()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->mUserPosition:F

    .line 173
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->mObservable:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$ArtPagerObservable;

    invoke-virtual {p1}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$ArtPagerObservable;->notifyDataChanged()V

    .line 175
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->positionChanged(Lcom/sonyericsson/music/common/Track;Lcom/sonyericsson/music/common/Track;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 176
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->mObservable:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$ArtPagerObservable;

    invoke-virtual {p1}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$ArtPagerObservable;->notifyPositionChanged()V

    :cond_3
    return-void
.end method

.method public unregisterObserver(Lcom/sonyericsson/music/fullplayer/ArtPagerObserver;)V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->mObservable:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$ArtPagerObservable;

    invoke-virtual {v0, p1}, Landroid/database/Observable;->unregisterObserver(Ljava/lang/Object;)V

    return-void
.end method
