.class public final Lcom/sonyericsson/music/library/PlaylistsAdapter;
.super Lcom/sonyericsson/music/library/RearrangeAdapter;
.source "PlaylistsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/library/PlaylistsAdapter$PersistChangesTask;,
        Lcom/sonyericsson/music/library/PlaylistsAdapter$PlaylistsImageDecodedListener;,
        Lcom/sonyericsson/music/library/PlaylistsAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mContextMenuTouchAreaListener:Landroid/view/View$OnClickListener;

.field private mDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

.field private mDefaultPlaylistIconLocal:Landroid/graphics/drawable/BitmapDrawable;

.field private mImageHeight:I

.field private mImageWidth:I

.field private mIsManageMode:Z

.field private final mManagedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mModifiedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

.field private mPlaylistArtUris:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mPlaylistsFragment:Lcom/sonyericsson/music/library/PlaylistsFragment;

.field private mShowContextMenu:Z

.field private mSmartPlaylistArtUris:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSortOrder:Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sonyericsson/music/artdecoder/ArtDecoder;Z)V
    .locals 1

    .line 146
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/library/RearrangeAdapter;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mShowContextMenu:Z

    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mIsManageMode:Z

    .line 115
    new-instance v0, Lcom/sonyericsson/music/library/PlaylistsAdapter$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/library/PlaylistsAdapter$1;-><init>(Lcom/sonyericsson/music/library/PlaylistsAdapter;)V

    iput-object v0, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mContextMenuTouchAreaListener:Landroid/view/View$OnClickListener;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mManagedItems:Ljava/util/List;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mModifiedItems:Ljava/util/List;

    .line 147
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/library/PlaylistsAdapter;->init(Landroid/content/Context;Lcom/sonyericsson/music/artdecoder/ArtDecoder;)V

    .line 148
    iput-boolean p3, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mShowContextMenu:Z

    const/4 p1, 0x0

    .line 149
    iput-object p1, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mPlaylistsFragment:Lcom/sonyericsson/music/library/PlaylistsFragment;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/music/library/PlaylistsFragment;Lcom/sonyericsson/music/artdecoder/ArtDecoder;ZLcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;)V
    .locals 2

    .line 136
    sget-object v0, Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;->ALPHABETICAL:Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;

    if-ne p5, v0, :cond_0

    const-string v0, "playlist_name"

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 135
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/library/RearrangeAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mShowContextMenu:Z

    const/4 v1, 0x0

    .line 111
    iput-boolean v1, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mIsManageMode:Z

    .line 115
    new-instance v1, Lcom/sonyericsson/music/library/PlaylistsAdapter$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/music/library/PlaylistsAdapter$1;-><init>(Lcom/sonyericsson/music/library/PlaylistsAdapter;)V

    iput-object v1, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mContextMenuTouchAreaListener:Landroid/view/View$OnClickListener;

    .line 127
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mManagedItems:Ljava/util/List;

    .line 131
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mModifiedItems:Ljava/util/List;

    .line 138
    invoke-direct {p0, p1, p3}, Lcom/sonyericsson/music/library/PlaylistsAdapter;->init(Landroid/content/Context;Lcom/sonyericsson/music/artdecoder/ArtDecoder;)V

    .line 139
    iput-boolean p4, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mIsManageMode:Z

    xor-int/lit8 p1, p4, 0x1

    .line 140
    iput-boolean p1, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mShowContextMenu:Z

    .line 141
    iput-object p5, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mSortOrder:Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;

    .line 142
    iput-object p2, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mPlaylistsFragment:Lcom/sonyericsson/music/library/PlaylistsFragment;

    return-void
.end method

.method private addOrUpdateModifiedItem(Landroidx/core/util/Pair;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 386
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mModifiedItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mModifiedItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/util/Pair;

    .line 389
    iget-object v3, v3, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, p1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 391
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mModifiedItems:Ljava/util/List;

    invoke-interface {v0, v2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 399
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mModifiedItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private enableListItem(Landroid/view/View;Lcom/sonyericsson/music/library/PlaylistsAdapter$ViewHolder;Z)V
    .locals 1

    xor-int/lit8 v0, p3, 0x1

    .line 436
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 437
    iget-object p1, p2, Lcom/sonyericsson/music/library/PlaylistsAdapter$ViewHolder;->mText1:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 438
    iget-object p1, p2, Lcom/sonyericsson/music/library/PlaylistsAdapter$ViewHolder;->mText2:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 439
    iget-object p1, p2, Lcom/sonyericsson/music/library/PlaylistsAdapter$ViewHolder;->mContextMenuIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 440
    iget-object p1, p2, Lcom/sonyericsson/music/library/PlaylistsAdapter$ViewHolder;->mContextMenuTouchArea:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    return-void
.end method

.method private getDefaultPlaylistIcon(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 5

    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mImageWidth:I

    iget v2, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mImageHeight:I

    sget-object v3, Lcom/sonyericsson/music/common/ScalingUtilities$ScalingLogic;->FIT:Lcom/sonyericsson/music/common/ScalingUtilities$ScalingLogic;

    const v4, 0x7f0801b6

    invoke-static {v0, v4, v1, v2, v3}, Lcom/sonyericsson/music/common/ScalingUtilities;->createScaledBitmap(Landroid/content/res/Resources;IIILcom/sonyericsson/music/common/ScalingUtilities$ScalingLogic;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 167
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    .line 171
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 172
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    return-object v1
.end method

.method private getPath(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    const-string v0, "path"

    .line 404
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getPlaylistArtUri(Landroid/database/Cursor;Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 286
    iget-object v1, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mSmartPlaylistArtUris:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 288
    sget-object p1, Lcom/sonyericsson/music/library/PlaylistsAdapter$2;->$SwitchMap$com$sonyericsson$music$common$SmartPlaylistUtils$SmartPlaylistType:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x3

    .line 302
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object v0, p1

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x2

    .line 298
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object v0, p1

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x1

    .line 294
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object v0, p1

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x0

    .line 290
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object v0, p1

    goto :goto_0

    .line 307
    :cond_0
    iget-object p2, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mPlaylistArtUris:Landroid/util/SparseArray;

    if-eqz p2, :cond_1

    const-string p2, "_id"

    .line 309
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 310
    iget-object p2, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mPlaylistArtUris:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    :cond_1
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private init(Landroid/content/Context;Lcom/sonyericsson/music/artdecoder/ArtDecoder;)V
    .locals 2

    .line 153
    iput-object p1, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mContext:Landroid/content/Context;

    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mImageWidth:I

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mImageHeight:I

    .line 156
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/library/PlaylistsAdapter;->getDefaultPlaylistIcon(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mDefaultPlaylistIconLocal:Landroid/graphics/drawable/BitmapDrawable;

    .line 157
    iput-object p2, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    return-void
.end method

.method private isItemChecked(Ljava/lang/String;)Z
    .locals 3

    .line 415
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mModifiedItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 417
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mModifiedItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/util/Pair;

    .line 418
    iget-object v2, v1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 419
    iget-object p1, v1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 424
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mManagedItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 426
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mManagedItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/util/Pair;

    .line 427
    iget-object v2, v1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 428
    iget-object p1, v1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private isNowPlayingView(Landroid/net/Uri;)Z
    .locals 2

    .line 534
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 538
    :cond_0
    invoke-virtual {v0}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->getSourceUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 539
    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private static setChecked(Landroid/content/Context;ZLandroid/widget/CheckBox;)V
    .locals 1

    .line 366
    invoke-virtual {p2, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    if-eqz p1, :cond_0

    .line 371
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f080201

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 372
    invoke-static {p0}, Lcom/sonyericsson/music/common/ThemeColor;->accent(Landroid/content/Context;)I

    move-result p0

    goto :goto_0

    .line 374
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f08016f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 375
    invoke-static {p0}, Lcom/sonyericsson/music/common/ThemeColor;->secondaryText(Landroid/content/Context;)I

    move-result p0

    .line 377
    :goto_0
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 378
    invoke-virtual {p2, p1}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private startLoadImage(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;IIZ)Z
    .locals 14

    move-object v6, p0

    .line 445
    invoke-virtual/range {p1 .. p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    if-eqz p3, :cond_0

    .line 446
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    move v9, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v9, 0x0

    :goto_0
    if-eqz p6, :cond_1

    const/4 v0, 0x0

    move-object v12, v0

    goto :goto_1

    :cond_1
    move-object/from16 v12, p3

    .line 448
    :goto_1
    iget-object v7, v6, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    new-instance v13, Lcom/sonyericsson/music/library/PlaylistsAdapter$PlaylistsImageDecodedListener;

    iget-object v5, v6, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mContext:Landroid/content/Context;

    move-object v0, v13

    move-object v1, p1

    move-object/from16 v2, p2

    move-object v3, p0

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/music/library/PlaylistsAdapter$PlaylistsImageDecodedListener;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Lcom/sonyericsson/music/library/PlaylistsAdapter;Ljava/lang/String;Landroid/content/Context;)V

    move-object/from16 v8, p2

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-virtual/range {v7 .. v13}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->load(Ljava/lang/String;IIILjava/lang/String;Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 12

    .line 204
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/library/PlaylistsAdapter$ViewHolder;

    .line 207
    invoke-static {p3}, Lcom/sonyericsson/music/common/DBUtils;->getPlaylistType(Landroid/database/Cursor;)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    move-result-object v1

    const-string v2, "playlist_name"

    .line 210
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-le v2, v4, :cond_0

    .line 213
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 214
    iget-object v4, v0, Lcom/sonyericsson/music/library/PlaylistsAdapter$ViewHolder;->mText1:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v8, v2

    goto :goto_0

    :cond_0
    move-object v8, v3

    .line 218
    :goto_0
    invoke-direct {p0, p3, v1}, Lcom/sonyericsson/music/library/PlaylistsAdapter;->getPlaylistArtUri(Landroid/database/Cursor;Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-eqz v7, :cond_2

    .line 220
    iget-object v6, v0, Lcom/sonyericsson/music/library/PlaylistsAdapter$ViewHolder;->mImage:Landroid/widget/ImageView;

    iget v9, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mImageWidth:I

    iget v10, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mImageHeight:I

    if-eqz v1, :cond_1

    const/4 v11, 0x1

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    :goto_1
    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/sonyericsson/music/library/PlaylistsAdapter;->startLoadImage(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;IIZ)Z

    move-result v5

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    if-nez v5, :cond_4

    if-eqz v1, :cond_3

    .line 225
    iget-object v5, v0, Lcom/sonyericsson/music/library/PlaylistsAdapter$ViewHolder;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getDefaultArtResourceId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 227
    :cond_3
    iget-object v5, v0, Lcom/sonyericsson/music/library/PlaylistsAdapter$ViewHolder;->mImage:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mDefaultPlaylistIconLocal:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_3
    if-eqz v1, :cond_6

    .line 231
    sget-object v5, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->FAVOURITES:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    if-ne v1, v5, :cond_5

    goto :goto_4

    .line 244
    :cond_5
    iget-object v5, v0, Lcom/sonyericsson/music/library/PlaylistsAdapter$ViewHolder;->mText2:Landroid/widget/TextView;

    const v6, 0x7f10025f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_6

    :cond_6
    :goto_4
    const-string v5, "members_count"

    .line 232
    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-lez v5, :cond_8

    if-eq v5, v2, :cond_7

    .line 236
    iget-object v6, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f10018d

    new-array v8, v2, [Ljava/lang/Object;

    .line 237
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v4

    .line 236
    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    .line 238
    :cond_7
    iget-object v5, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f10018e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    .line 240
    :cond_8
    iget-object v5, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f10025e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 242
    :goto_5
    iget-object v6, v0, Lcom/sonyericsson/music/library/PlaylistsAdapter$ViewHolder;->mText2:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    :goto_6
    iget-object v5, v0, Lcom/sonyericsson/music/library/PlaylistsAdapter$ViewHolder;->mCheckbox:Landroid/widget/CheckBox;

    iget-boolean v6, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mIsManageMode:Z

    const/16 v7, 0x8

    if-eqz v6, :cond_9

    const/4 v6, 0x0

    goto :goto_7

    :cond_9
    const/16 v6, 0x8

    :goto_7
    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 249
    iget-boolean v5, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mIsManageMode:Z

    if-eqz v5, :cond_a

    .line 251
    invoke-direct {p0, p3}, Lcom/sonyericsson/music/library/PlaylistsAdapter;->getPath(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sonyericsson/music/library/PlaylistsAdapter;->isItemChecked(Ljava/lang/String;)Z

    move-result v5

    .line 252
    iget-object v6, v0, Lcom/sonyericsson/music/library/PlaylistsAdapter$ViewHolder;->mCheckbox:Landroid/widget/CheckBox;

    invoke-static {p2, v5, v6}, Lcom/sonyericsson/music/library/PlaylistsAdapter;->setChecked(Landroid/content/Context;ZLandroid/widget/CheckBox;)V

    .line 255
    :cond_a
    iget-boolean p2, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mIsManageMode:Z

    if-nez p2, :cond_c

    iget-boolean p2, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mShowContextMenu:Z

    if-nez p2, :cond_b

    goto :goto_8

    .line 261
    :cond_b
    iget-object p2, v0, Lcom/sonyericsson/music/library/PlaylistsAdapter$ViewHolder;->mContextMenuTouchArea:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mContextMenuTouchAreaListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    iget-object p2, v0, Lcom/sonyericsson/music/library/PlaylistsAdapter$ViewHolder;->mContextMenuIcon:Landroid/widget/ImageView;

    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 263
    iget-object p2, v0, Lcom/sonyericsson/music/library/PlaylistsAdapter$ViewHolder;->mContextMenuTouchArea:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_9

    .line 257
    :cond_c
    :goto_8
    iget-object p2, v0, Lcom/sonyericsson/music/library/PlaylistsAdapter$ViewHolder;->mContextMenuTouchArea:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    iget-object p2, v0, Lcom/sonyericsson/music/library/PlaylistsAdapter$ViewHolder;->mContextMenuIcon:Landroid/widget/ImageView;

    invoke-virtual {p2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 259
    iget-object p2, v0, Lcom/sonyericsson/music/library/PlaylistsAdapter$ViewHolder;->mContextMenuTouchArea:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 266
    :goto_9
    invoke-direct {p0, p1, v0, v2}, Lcom/sonyericsson/music/library/PlaylistsAdapter;->enableListItem(Landroid/view/View;Lcom/sonyericsson/music/library/PlaylistsAdapter$ViewHolder;Z)V

    .line 269
    sget-object p1, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->FAVOURITES:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    if-eq v1, p1, :cond_e

    sget-object p1, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->RECENTLY_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    if-eq v1, p1, :cond_e

    sget-object p1, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->MOST_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    if-eq v1, p1, :cond_e

    sget-object p1, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->NEWLY_ADDED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    if-ne v1, p1, :cond_d

    goto :goto_a

    :cond_d
    const-string p1, "_id"

    .line 275
    invoke-interface {p3, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p3, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 276
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/library/PlaylistsAdapter;->isNowPlayingView(Ljava/lang/String;)Z

    move-result p1

    goto :goto_b

    .line 273
    :cond_e
    :goto_a
    invoke-virtual {v1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getContainerUri()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/library/PlaylistsAdapter;->isNowPlayingView(Landroid/net/Uri;)Z

    move-result p1

    .line 278
    :goto_b
    iget-object p2, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mContext:Landroid/content/Context;

    iget-object p3, v0, Lcom/sonyericsson/music/library/PlaylistsAdapter$ViewHolder;->mText1:Landroid/widget/TextView;

    sget-object v1, Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;->MEDIUM:Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;

    invoke-static {p2, p1, p3, v1}, Lcom/sonyericsson/music/common/TextStyleUtil;->setTextStyle(Landroid/content/Context;ZLandroid/widget/TextView;Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;)V

    .line 279
    iget-object p2, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mContext:Landroid/content/Context;

    iget-object p3, v0, Lcom/sonyericsson/music/library/PlaylistsAdapter$ViewHolder;->mText2:Landroid/widget/TextView;

    sget-object v0, Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;->SMALL_SECONDARY:Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;

    invoke-static {p2, p1, p3, v0}, Lcom/sonyericsson/music/common/TextStyleUtil;->setTextStyle(Landroid/content/Context;ZLandroid/widget/TextView;Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;)V

    return-void
.end method

.method clearChanges()V
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mModifiedItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method getModifiedItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 332
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mModifiedItems:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method getPlaylistType(I)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;
    .locals 0

    .line 317
    invoke-virtual {p0, p1}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/database/Cursor;

    if-eqz p1, :cond_0

    .line 318
    invoke-static {p1}, Lcom/sonyericsson/music/common/DBUtils;->getPlaylistType(Landroid/database/Cursor;)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method isNowPlayingView(Ljava/lang/String;)Z
    .locals 4

    .line 497
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 501
    :cond_0
    invoke-virtual {v0}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->getSourceUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    .line 506
    invoke-static {v0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getSmartPlaylistType(Landroid/net/Uri;)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    move-result-object v3

    if-nez v3, :cond_1

    .line 509
    invoke-static {v0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getPlaylistIdParam(Landroid/net/Uri;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    .line 511
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 514
    :cond_1
    invoke-virtual {v3}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getId()Ljava/lang/String;

    move-result-object v2

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 517
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public loadPlaylistArtUriToAdapter(Landroid/database/Cursor;Z)V
    .locals 5

    .line 462
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    if-eqz p1, :cond_1

    .line 464
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "playlist_id"

    .line 465
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "playlist_art_uri"

    .line 466
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 468
    :cond_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 469
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 470
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 471
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_1
    if-eqz p2, :cond_2

    .line 476
    iput-object v0, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mSmartPlaylistArtUris:Landroid/util/SparseArray;

    goto :goto_0

    .line 478
    :cond_2
    iput-object v0, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mPlaylistArtUris:Landroid/util/SparseArray;

    .line 480
    :goto_0
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const p2, 0x7f0c005c

    const/4 p3, 0x0

    .line 178
    invoke-static {p1, p2, p3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0901fc

    .line 179
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Landroid/widget/TextView;

    const p2, 0x7f0901fd

    .line 180
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Landroid/widget/TextView;

    const p2, 0x7f0900db

    .line 181
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/widget/ImageView;

    const p2, 0x7f090080

    .line 182
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const p3, 0x7f090081

    .line 183
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout;

    const v0, 0x7f090071

    .line 184
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/CheckBox;

    .line 185
    new-instance v8, Lcom/sonyericsson/music/library/PlaylistsAdapter$ViewHolder;

    move-object v0, v8

    move-object v4, p2

    move-object v5, p3

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/music/library/PlaylistsAdapter$ViewHolder;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/CheckBox;)V

    .line 186
    invoke-virtual {p1, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 188
    iget-boolean v0, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mShowContextMenu:Z

    if-eqz v0, :cond_0

    .line 189
    iget-object p2, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mContextMenuTouchAreaListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, p2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 191
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 192
    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 193
    iget-boolean p2, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mIsManageMode:Z

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 194
    invoke-virtual {v7, p2}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_1
    :goto_0
    return-object p1
.end method

.method persistChanges()V
    .locals 5

    .line 342
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mModifiedItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    new-instance v0, Lcom/sonyericsson/music/library/PlaylistsAdapter$PersistChangesTask;

    iget-object v1, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mPlaylistsFragment:Lcom/sonyericsson/music/library/PlaylistsFragment;

    invoke-direct {v0, v1, p0}, Lcom/sonyericsson/music/library/PlaylistsAdapter$PersistChangesTask;-><init>(Lcom/sonyericsson/music/library/PlaylistsFragment;Lcom/sonyericsson/music/library/PlaylistsAdapter;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/List;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mModifiedItems:Ljava/util/List;

    aput-object v4, v2, v3

    .line 344
    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method setIsManageMode(ZLcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;)V
    .locals 0

    .line 488
    iput-boolean p1, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mIsManageMode:Z

    .line 489
    iput-object p2, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mSortOrder:Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;

    xor-int/lit8 p1, p1, 0x1

    .line 490
    iput-boolean p1, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mShowContextMenu:Z

    .line 491
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method setManagedItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    .line 322
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mManagedItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 323
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mManagedItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method setModifiedItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    .line 327
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mModifiedItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 328
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mModifiedItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method setNowPlayingInfo(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V
    .locals 0

    .line 484
    iput-object p1, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

    return-void
.end method

.method setSortOrder(Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;)V
    .locals 1

    .line 525
    iput-object p1, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mSortOrder:Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;

    .line 527
    iget-object p1, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mSortOrder:Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;

    sget-object v0, Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;->ALPHABETICAL:Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;

    if-ne p1, v0, :cond_0

    const-string p1, "playlist_name"

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 526
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/library/RearrangeAdapter;->setSortIndex(Ljava/lang/String;)V

    return-void
.end method

.method toggleItemMarked(Landroid/view/View;I)Z
    .locals 3

    .line 349
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mManagedItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter;->mManagedItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/core/util/Pair;

    iget-object p2, p2, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    .line 351
    invoke-direct {p0, p2}, Lcom/sonyericsson/music/library/PlaylistsAdapter;->isItemChecked(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    .line 354
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/library/PlaylistsAdapter$ViewHolder;

    iget-object p1, p1, Lcom/sonyericsson/music/library/PlaylistsAdapter$ViewHolder;->mCheckbox:Landroid/widget/CheckBox;

    invoke-static {v2, v1, p1}, Lcom/sonyericsson/music/library/PlaylistsAdapter;->setChecked(Landroid/content/Context;ZLandroid/widget/CheckBox;)V

    .line 356
    new-instance p1, Landroidx/core/util/Pair;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p1, p2, v1}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/library/PlaylistsAdapter;->addOrUpdateModifiedItem(Landroidx/core/util/Pair;)V

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
