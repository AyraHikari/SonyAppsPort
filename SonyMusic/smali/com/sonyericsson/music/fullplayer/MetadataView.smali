.class public Lcom/sonyericsson/music/fullplayer/MetadataView;
.super Landroid/widget/RelativeLayout;
.source "MetadataView.java"

# interfaces
.implements Lcom/sonyericsson/music/fullplayer/ArtPagerObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/fullplayer/MetadataView$IsFavoriteTask;
    }
.end annotation


# static fields
.field private static final TRANSLATE_LENGTH:F = 0.05f


# instance fields
.field private mAdapter:Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;

.field private mAddToPlaylistButton:Landroid/widget/ImageButton;

.field private mAddToRemoveFromFavoritesButton:Landroid/widget/ImageButton;

.field private mAlbumName:Landroid/widget/TextView;

.field private mArtistName:Landroid/widget/TextView;

.field private mCurrentIndicatorPos:I

.field private mFavoriteOffDrawable:Landroid/graphics/drawable/Drawable;

.field private mFavoriteOnDrawable:Landroid/graphics/drawable/Drawable;

.field private mFavoriteTask:Lcom/sonyericsson/music/fullplayer/MetadataView$IsFavoriteTask;

.field private final mTextAlphas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTrackName:Landroid/widget/TextView;

.field private mUserPosition:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 41
    iput p1, p0, Lcom/sonyericsson/music/fullplayer/MetadataView;->mUserPosition:F

    .line 49
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/music/fullplayer/MetadataView;->mTextAlphas:Ljava/util/Map;

    const/4 p1, -0x1

    .line 56
    iput p1, p0, Lcom/sonyericsson/music/fullplayer/MetadataView;->mCurrentIndicatorPos:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/music/fullplayer/MetadataView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 41
    iput p1, p0, Lcom/sonyericsson/music/fullplayer/MetadataView;->mUserPosition:F

    .line 49
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/music/fullplayer/MetadataView;->mTextAlphas:Ljava/util/Map;

    const/4 p1, -0x1

    .line 56
    iput p1, p0, Lcom/sonyericsson/music/fullplayer/MetadataView;->mCurrentIndicatorPos:I

    return-void
.end method

.method static synthetic access$102(Lcom/sonyericsson/music/fullplayer/MetadataView;Lcom/sonyericsson/music/fullplayer/MetadataView$IsFavoriteTask;)Lcom/sonyericsson/music/fullplayer/MetadataView$IsFavoriteTask;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/sonyericsson/music/fullplayer/MetadataView;->mFavoriteTask:Lcom/sonyericsson/music/fullplayer/MetadataView$IsFavoriteTask;

    return-object p1
.end method

.method private applyTextColorAlpha(Landroid/widget/TextView;F)V
    .locals 2

    .line 210
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/fullplayer/MetadataView;->mTextAlphas:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p2

    float-to-int p2, v1

    invoke-virtual {v0, p2}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private findViewByIdOrThrow(I)Landroid/view/View;
    .locals 4

    .line 95
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 97
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "missing child "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "0x%x"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private floor(F)I
    .locals 2

    float-to-double v0, p1

    .line 243
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method

.method private translateLength()F
    .locals 2

    .line 239
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3d4ccccd    # 0.05f

    mul-float v0, v0, v1

    return v0
.end method

.method private update()V
    .locals 8

    .line 129
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/MetadataView;->mAdapter:Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;

    if-eqz v0, :cond_2

    .line 132
    iget v0, p0, Lcom/sonyericsson/music/fullplayer/MetadataView;->mUserPosition:F

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/fullplayer/MetadataView;->floor(F)I

    move-result v0

    .line 133
    iget v1, p0, Lcom/sonyericsson/music/fullplayer/MetadataView;->mUserPosition:F

    int-to-float v2, v0

    sub-float v3, v1, v2

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x40000000    # 2.0f

    cmpg-float v5, v3, v1

    if-gez v5, :cond_1

    mul-float v1, v3, v2

    sub-float/2addr v4, v1

    neg-float v1, v3

    mul-float v1, v1, v2

    .line 145
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/MetadataView;->translateLength()F

    move-result v2

    mul-float v1, v1, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 148
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/fullplayer/MetadataView;->wrap(I)I

    move-result v0

    sub-float v1, v3, v1

    mul-float v1, v1, v2

    sub-float/2addr v4, v3

    mul-float v4, v4, v2

    .line 150
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/MetadataView;->translateLength()F

    move-result v2

    mul-float v2, v2, v4

    move v4, v1

    move v1, v2

    .line 152
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/music/fullplayer/MetadataView;->mAdapter:Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;

    invoke-interface {v2, v0}, Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;->getArtistName(I)Ljava/lang/String;

    move-result-object v2

    .line 153
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/sonyericsson/music/common/StringUtils;->replaceUnknownArtistWithLocalizedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 154
    iget-object v3, p0, Lcom/sonyericsson/music/fullplayer/MetadataView;->mAdapter:Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;

    invoke-interface {v3, v0}, Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;->getAlbumName(I)Ljava/lang/String;

    move-result-object v3

    .line 155
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/sonyericsson/music/common/StringUtils;->replaceUnknownAlbumWithLocalizedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 157
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/fullplayer/MetadataView;->updateIndicator(I)V

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float v5, v5, v4

    float-to-int v5, v5

    .line 160
    iget-object v6, p0, Lcom/sonyericsson/music/fullplayer/MetadataView;->mTrackName:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/sonyericsson/music/fullplayer/MetadataView;->mAdapter:Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;

    invoke-interface {v7, v0}, Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;->getTrackName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lcom/sonyericsson/music/fullplayer/MetadataView;->updateText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/MetadataView;->mArtistName:Landroid/widget/TextView;

    invoke-direct {p0, v0, v2}, Lcom/sonyericsson/music/fullplayer/MetadataView;->updateText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/MetadataView;->mAlbumName:Landroid/widget/TextView;

    invoke-direct {p0, v0, v3}, Lcom/sonyericsson/music/fullplayer/MetadataView;->updateText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/MetadataView;->mTrackName:Landroid/widget/TextView;

    invoke-direct {p0, v0, v4}, Lcom/sonyericsson/music/fullplayer/MetadataView;->applyTextColorAlpha(Landroid/widget/TextView;F)V

    .line 164
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/MetadataView;->mArtistName:Landroid/widget/TextView;

    invoke-direct {p0, v0, v4}, Lcom/sonyericsson/music/fullplayer/MetadataView;->applyTextColorAlpha(Landroid/widget/TextView;F)V

    .line 165
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/MetadataView;->mAlbumName:Landroid/widget/TextView;

    invoke-direct {p0, v0, v4}, Lcom/sonyericsson/music/fullplayer/MetadataView;->applyTextColorAlpha(Landroid/widget/TextView;F)V

    .line 166
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/MetadataView;->mAddToRemoveFromFavoritesButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setImageAlpha(I)V

    .line 167
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/MetadataView;->mAddToPlaylistButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setImageAlpha(I)V

    .line 168
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    return-void

    .line 130
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "must have an adapter to update"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateIndicator(I)V
    .locals 3

    .line 172
    iget v0, p0, Lcom/sonyericsson/music/fullplayer/MetadataView;->mCurrentIndicatorPos:I

    if-ne p1, v0, :cond_0

    return-void

    .line 175
    :cond_0
    iput p1, p0, Lcom/sonyericsson/music/fullplayer/MetadataView;->mCurrentIndicatorPos:I

    .line 176
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/MetadataView;->mAdapter:Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;

    invoke-interface {v0, p1}, Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;->getUri(I)Landroid/net/Uri;

    move-result-object p1

    .line 178
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/MetadataView;->mFavoriteTask:Lcom/sonyericsson/music/fullplayer/MetadataView$IsFavoriteTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 179
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 180
    iput-object v0, p0, Lcom/sonyericsson/music/fullplayer/MetadataView;->mFavoriteTask:Lcom/sonyericsson/music/fullplayer/MetadataView$IsFavoriteTask;

    .line 183
    :cond_1
    invoke-static {p1}, Lcom/sonyericsson/music/common/DBUtils;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 184
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/MetadataView;->mAddToRemoveFromFavoritesButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/MetadataView;->mAddToPlaylistButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 186
    new-instance v0, Lcom/sonyericsson/music/fullplayer/MetadataView$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/fullplayer/MetadataView$1;-><init>(Lcom/sonyericsson/music/fullplayer/MetadataView;)V

    iput-object v0, p0, Lcom/sonyericsson/music/fullplayer/MetadataView;->mFavoriteTask:Lcom/sonyericsson/music/fullplayer/MetadataView$IsFavoriteTask;

    const/4 v0, 0x2

    .line 195
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 196
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/MetadataView;->mFavoriteTask:Lcom/sonyericsson/music/fullplayer/MetadataView$IsFavoriteTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 198
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/MetadataView;->mAddToRemoveFromFavoritesButton:Landroid/widget/ImageButton;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 199
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/MetadataView;->mAddToPlaylistButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1

    .line 204
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private wrap(I)I
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/MetadataView;->mAdapter:Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;

    invoke-interface {v0}, Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;->getCount()I

    move-result v0

    .line 215
    rem-int/2addr p1, v0

    add-int/2addr p1, v0

    rem-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public onBitmapChanged(Landroid/graphics/Bitmap;I)V
    .locals 0

    return-void
.end method

.method public onDataChanged()V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/MetadataView;->mAdapter:Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;

    invoke-interface {v0}, Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;->getUserPosition()F

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/fullplayer/MetadataView;->mUserPosition:F

    const/4 v0, -0x1

    .line 221
    iput v0, p0, Lcom/sonyericsson/music/fullplayer/MetadataView;->mCurrentIndicatorPos:I

    .line 222
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/MetadataView;->update()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .line 72
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 75
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0800b0

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/fullplayer/MetadataView;->mFavoriteOnDrawable:Landroid/graphics/drawable/Drawable;

    .line 77
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0800af

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/fullplayer/MetadataView;->mFavoriteOffDrawable:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f090213

    .line 79
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/fullplayer/MetadataView;->findViewByIdOrThrow(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/music/fullplayer/MetadataView;->mTrackName:Landroid/widget/TextView;

    const v0, 0x7f090050

    .line 80
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/fullplayer/MetadataView;->findViewByIdOrThrow(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/music/fullplayer/MetadataView;->mArtistName:Landroid/widget/TextView;

    const v0, 0x7f090041

    .line 81
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/fullplayer/MetadataView;->findViewByIdOrThrow(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/music/fullplayer/MetadataView;->mAlbumName:Landroid/widget/TextView;

    const v0, 0x7f09003e

    .line 82
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sonyericsson/music/fullplayer/MetadataView;->mAddToRemoveFromFavoritesButton:Landroid/widget/ImageButton;

    const v0, 0x7f09003d

    .line 83
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sonyericsson/music/fullplayer/MetadataView;->mAddToPlaylistButton:Landroid/widget/ImageButton;

    .line 86
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/MetadataView;->mTrackName:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    const/4 v0, 0x3

    .line 88
    new-array v0, v0, [Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sonyericsson/music/fullplayer/MetadataView;->mTrackName:Landroid/widget/TextView;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    iget-object v2, p0, Lcom/sonyericsson/music/fullplayer/MetadataView;->mArtistName:Landroid/widget/TextView;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sonyericsson/music/fullplayer/MetadataView;->mAlbumName:Landroid/widget/TextView;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    .line 89
    iget-object v4, p0, Lcom/sonyericsson/music/fullplayer/MetadataView;->mTextAlphas:Ljava/util/Map;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPositionChanged()V
    .locals 0

    return-void
.end method

.method public onUserPositionChanged()V
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/MetadataView;->mAdapter:Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;

    invoke-interface {v0}, Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;->getUserPosition()F

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/fullplayer/MetadataView;->mUserPosition:F

    .line 231
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/MetadataView;->update()V

    return-void
.end method

.method refreshIndicator()V
    .locals 1

    const/4 v0, -0x1

    .line 116
    iput v0, p0, Lcom/sonyericsson/music/fullplayer/MetadataView;->mCurrentIndicatorPos:I

    .line 117
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/MetadataView;->update()V

    return-void
.end method

.method setAdapter(Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/MetadataView;->mAdapter:Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;

    if-eqz v0, :cond_0

    .line 104
    invoke-interface {v0, p0}, Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;->unregisterObserver(Lcom/sonyericsson/music/fullplayer/ArtPagerObserver;)V

    .line 106
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/music/fullplayer/MetadataView;->mAdapter:Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;

    .line 107
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/MetadataView;->mAdapter:Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;

    if-eqz p1, :cond_1

    .line 108
    invoke-interface {p1, p0}, Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;->registerObserver(Lcom/sonyericsson/music/fullplayer/ArtPagerObserver;)V

    .line 109
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/MetadataView;->mAdapter:Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;

    invoke-interface {p1}, Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;->getUserPosition()F

    move-result p1

    iput p1, p0, Lcom/sonyericsson/music/fullplayer/MetadataView;->mUserPosition:F

    .line 110
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/MetadataView;->update()V

    :cond_1
    return-void
.end method

.method setFavoriteIndicator(Z)V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/MetadataView;->mAddToRemoveFromFavoritesButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/music/fullplayer/MetadataView;->mFavoriteOnDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/music/fullplayer/MetadataView;->mFavoriteOffDrawable:Landroid/graphics/drawable/Drawable;

    .line 122
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/MetadataView;->mAddToRemoveFromFavoritesButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f10025a

    .line 124
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f100063

    .line 125
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 123
    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
