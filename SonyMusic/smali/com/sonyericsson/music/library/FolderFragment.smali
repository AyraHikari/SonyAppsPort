.class public Lcom/sonyericsson/music/library/FolderFragment;
.super Lcom/sonyericsson/music/library/LibraryListFragment;
.source "FolderFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/library/FolderFragment$ContextMenuData;,
        Lcom/sonyericsson/music/library/FolderFragment$ArtDecoderListener;
    }
.end annotation


# static fields
.field private static final FADE_IN_FADE_OUT_DURATION:I = 0xc8

.field private static final KEY_AGGREGATOR:Ljava/lang/String; = "aggregator"

.field private static final KEY_FOLDER_ART_URI:Ljava/lang/String; = "folder-art-uri"

.field private static final KEY_FOLDER_ID:Ljava/lang/String; = "folder-id"

.field private static final KEY_FOLDER_NAME:Ljava/lang/String; = "folder-name"

.field private static final KEY_FOLDER_PATH:Ljava/lang/String; = "folder-path"

.field private static final LOAD_FILES:I = 0x1

.field private static final REQUEST_CODE_METADATA:I = 0x0

.field public static final TAG:Ljava/lang/String; = "folder"


# instance fields
.field private mActivity:Lcom/sonyericsson/music/MusicActivity;

.field private mAggregator:Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

.field private mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

.field private mDefaultArtSize:I

.field private mFolderArtDefaultImage:Landroid/widget/ImageView;

.field private mFolderArtImage:Landroid/widget/ImageView;

.field private mFolderArtUri:Landroid/net/Uri;

.field private mFolderData:Lcom/sonyericsson/music/common/MenuUtils$FolderData;

.field private mFolderId:Ljava/lang/String;

.field private mFolderName:Ljava/lang/String;

.field private mFolderPath:Ljava/lang/String;

.field private mFolderUri:Landroid/net/Uri;

.field private mNotFirstLoad:Z

.field private mNumberOfTracks:Landroid/widget/TextView;

.field private mShuffleView:Landroid/view/View;

.field private mTrackListEmpty:Z

.field private mTracksUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;-><init>()V

    return-void
.end method

.method private getFolderArtUri()Landroid/net/Uri;
    .locals 2

    .line 510
    iget-object v0, p0, Lcom/sonyericsson/music/library/FolderFragment;->mFolderArtUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 511
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "folder-art-uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/sonyericsson/music/library/FolderFragment;->mFolderArtUri:Landroid/net/Uri;

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/library/FolderFragment;->mFolderArtUri:Landroid/net/Uri;

    return-object v0
.end method

.method private getFolderId()Ljava/lang/String;
    .locals 3

    .line 496
    iget-object v0, p0, Lcom/sonyericsson/music/library/FolderFragment;->mFolderId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 497
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "folder-id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/library/FolderFragment;->mFolderId:Ljava/lang/String;

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/library/FolderFragment;->mFolderId:Ljava/lang/String;

    return-object v0
.end method

.method private getFolderName()Ljava/lang/String;
    .locals 3

    .line 482
    iget-object v0, p0, Lcom/sonyericsson/music/library/FolderFragment;->mFolderName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 483
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "folder-name"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/library/FolderFragment;->mFolderName:Ljava/lang/String;

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/library/FolderFragment;->mFolderName:Ljava/lang/String;

    return-object v0
.end method

.method private getFolderPath()Ljava/lang/String;
    .locals 3

    .line 489
    iget-object v0, p0, Lcom/sonyericsson/music/library/FolderFragment;->mFolderPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 490
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "folder-path"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/library/FolderFragment;->mFolderPath:Ljava/lang/String;

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/library/FolderFragment;->mFolderPath:Ljava/lang/String;

    return-object v0
.end method

.method private getFolderUri()Landroid/net/Uri;
    .locals 3

    .line 503
    iget-object v0, p0, Lcom/sonyericsson/music/library/FolderFragment;->mFolderUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    const-string v0, "external"

    .line 504
    invoke-direct {p0}, Lcom/sonyericsson/music/library/FolderFragment;->getFolderId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Files;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/library/FolderFragment;->mFolderUri:Landroid/net/Uri;

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/library/FolderFragment;->mFolderUri:Landroid/net/Uri;

    return-object v0
.end method

.method private getNbrOfTracksFromCursor(Landroid/database/Cursor;)I
    .locals 0

    if-eqz p1, :cond_0

    .line 532
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private getShuffleView()Landroid/view/View;
    .locals 3

    .line 562
    iget-object v0, p0, Lcom/sonyericsson/music/library/FolderFragment;->mShuffleView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 563
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c0063

    const/4 v2, 0x0

    .line 564
    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/library/FolderFragment;->mShuffleView:Landroid/view/View;

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/library/FolderFragment;->mShuffleView:Landroid/view/View;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Lcom/sonyericsson/music/library/FolderFragment;
    .locals 3

    .line 116
    new-instance v0, Lcom/sonyericsson/music/library/FolderFragment;

    invoke-direct {v0}, Lcom/sonyericsson/music/library/FolderFragment;-><init>()V

    .line 118
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p4, :cond_0

    const-string v2, "folder"

    .line 120
    invoke-virtual {p4, v2}, Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;->add(Ljava/lang/String;)Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    const-string v2, "aggregator"

    .line 121
    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    if-eqz p2, :cond_1

    const-string p4, "folder-name"

    .line 124
    invoke-virtual {v1, p4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_2

    const-string p4, "folder-path"

    .line 127
    invoke-virtual {v1, p4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz p0, :cond_3

    const-string p1, "folder-id"

    .line 130
    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz p3, :cond_5

    const-string p0, "folder-art-uri"

    .line 133
    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz p2, :cond_4

    .line 135
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    .line 134
    :goto_0
    invoke-static {p3, p0}, Lcom/sonyericsson/music/common/PaletteUtils;->getColorPick(Landroid/net/Uri;I)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_5

    const-string p1, "key_cached_background_color"

    .line 137
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 140
    :cond_5
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private setFolderData(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 7

    .line 635
    iget-object v0, p0, Lcom/sonyericsson/music/library/FolderFragment;->mFolderData:Lcom/sonyericsson/music/common/MenuUtils$FolderData;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 636
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 637
    new-instance v0, Lcom/sonyericsson/music/common/MenuUtils$FolderData;

    int-to-long v2, p1

    move-object v1, v0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/music/common/MenuUtils$FolderData;-><init>(JLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/sonyericsson/music/library/FolderFragment;->mFolderData:Lcom/sonyericsson/music/common/MenuUtils$FolderData;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private setHeaderInfoFolderPath(Ljava/lang/String;)V
    .locals 2

    .line 517
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mTitleHeaderView:Lcom/sonyericsson/music/ui/LibraryImageHeaderLayout;

    const v1, 0x7f0901ea

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x2

    .line 518
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 519
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setHeaderInfoNbrOfTracks(Landroid/database/Cursor;)V
    .locals 3

    .line 523
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/library/FolderFragment;->getNbrOfTracksFromCursor(Landroid/database/Cursor;)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const v1, 0x7f10018d

    .line 524
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 525
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    .line 524
    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const p1, 0x7f10018e

    .line 525
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 526
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/music/library/FolderFragment;->mNumberOfTracks:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private validatePlaybackRights(ILcom/sonyericsson/music/MusicActivity;)Z
    .locals 3

    .line 470
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/database/Cursor;

    if-eqz p1, :cond_0

    const-string v0, "_id"

    .line 472
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 474
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 476
    invoke-static {p1, p2}, Lcom/sonyericsson/music/common/MusicUtils;->validatePlaybackRights(Landroid/net/Uri;Lcom/sonyericsson/music/MusicActivity;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method protected getAdapter()Landroid/widget/CursorAdapter;
    .locals 2

    .line 243
    new-instance v0, Lcom/sonyericsson/music/library/FolderAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/music/library/FolderAdapter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected bridge synthetic getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/FolderFragment;->getAdapter()Landroid/widget/CursorAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected getLoaderIds()[I
    .locals 3

    const/4 v0, 0x1

    .line 236
    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    return-object v1
.end method

.method protected getMatcherUris()[Lcom/sonyericsson/music/library/BaseFragment$MatcherData;
    .locals 6

    .line 572
    sget-boolean v0, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "external"

    invoke-static {v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 576
    invoke-virtual {v2}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/*"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 579
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "external"

    invoke-static {v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 580
    invoke-virtual {v2}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 582
    :goto_0
    new-array v2, v1, [Lcom/sonyericsson/music/library/BaseFragment$MatcherData;

    const/4 v3, 0x0

    new-instance v4, Lcom/sonyericsson/music/library/BaseFragment$MatcherData;

    sget-boolean v5, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz v5, :cond_1

    const-string v5, "com.sonyericsson.music.musicinfo"

    goto :goto_1

    :cond_1
    const-string v5, "media"

    :goto_1
    invoke-direct {v4, v1, v0, v5}, Lcom/sonyericsson/music/library/BaseFragment$MatcherData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    return-object v2
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    if-nez p1, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const-string v0, "art_uri"

    .line 366
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 368
    iget-object v1, p0, Lcom/sonyericsson/music/library/FolderFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-static {v1}, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils;->clearCaches(Landroid/content/Context;)V

    .line 369
    iget-object v1, p0, Lcom/sonyericsson/music/library/FolderFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/music/MusicActivity;->getMusicFragmentManager()Lcom/sonyericsson/music/MusicFragmentManager;

    move-result-object v1

    .line 372
    iget-object v2, p0, Lcom/sonyericsson/music/library/FolderFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/music/MusicFragmentManager;->popBackStack(Landroid/app/Activity;)V

    .line 373
    iget-object v2, p0, Lcom/sonyericsson/music/library/FolderFragment;->mFolderId:Ljava/lang/String;

    iget-object v3, p0, Lcom/sonyericsson/music/library/FolderFragment;->mFolderPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/sonyericsson/music/library/FolderFragment;->mFolderName:Ljava/lang/String;

    iget-object v5, p0, Lcom/sonyericsson/music/library/FolderFragment;->mAggregator:Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    .line 374
    invoke-static {v2, v3, v4, v0, v5}, Lcom/sonyericsson/music/library/FolderFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Lcom/sonyericsson/music/library/FolderFragment;

    move-result-object v0

    const-string v2, "folder"

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 375
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/sonyericsson/music/MusicFragmentManager;->openFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZ)V

    .line 378
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 215
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 216
    check-cast p1, Lcom/sonyericsson/music/MusicActivity;

    iput-object p1, p0, Lcom/sonyericsson/music/library/FolderFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 12

    .line 383
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    .line 385
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->getContextMenuData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/library/FolderFragment$ContextMenuData;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 386
    iget-object v2, v0, Lcom/sonyericsson/music/library/FolderFragment$ContextMenuData;->mCursor:Landroid/database/Cursor;

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 390
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/music/library/LibraryBaseFragment;->mPlayerController:Lcom/sonyericsson/music/player/PlayerController;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/sonyericsson/music/player/PlayerController;->isServiceSet()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 391
    :goto_0
    iget-object v4, v0, Lcom/sonyericsson/music/library/FolderFragment$ContextMenuData;->mCursor:Landroid/database/Cursor;

    :try_start_0
    const-string v5, "_id"

    .line 394
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 395
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 397
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sparse-switch v6, :sswitch_data_0

    .line 434
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 425
    :sswitch_0
    :try_start_1
    invoke-static {p0, v7, v8, v1}, Lcom/sonyericsson/music/common/TrackActions;->launchEditMusicInfoWithResult(Landroidx/fragment/app/Fragment;JI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 434
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return v3

    .line 428
    :sswitch_1
    :try_start_2
    iget-object p1, p0, Lcom/sonyericsson/music/library/FolderFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-static {p1, v7, v8}, Lcom/sonyericsson/music/common/TrackActions;->addToFavourites(Lcom/sonyericsson/music/MusicActivity;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 434
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return v3

    .line 402
    :sswitch_2
    :try_start_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/16 v5, 0x15

    if-ne p1, v5, :cond_2

    const/4 v11, 0x1

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    :goto_1
    if-eqz v2, :cond_3

    .line 404
    iget v10, v0, Lcom/sonyericsson/music/library/FolderFragment$ContextMenuData;->mSelectedPosition:I

    .line 405
    iget-object v6, p0, Lcom/sonyericsson/music/library/LibraryBaseFragment;->mPlayerController:Lcom/sonyericsson/music/player/PlayerController;

    invoke-direct {p0}, Lcom/sonyericsson/music/library/FolderFragment;->getFolderUri()Landroid/net/Uri;

    move-result-object v9

    invoke-static/range {v6 .. v11}, Lcom/sonyericsson/music/common/FolderActions;->enqueueFolderTrack(Lcom/sonyericsson/music/player/PlayerController;JLandroid/net/Uri;IZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 434
    :cond_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return v3

    .line 414
    :sswitch_3
    :try_start_4
    iget-object p1, p0, Lcom/sonyericsson/music/library/FolderFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v7, v8}, Lcom/sonyericsson/music/common/Sender;->sendSingleFile(Landroid/content/Context;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 434
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return v3

    :sswitch_4
    :try_start_5
    const-string p1, "_display_name"

    .line 418
    invoke-interface {v4, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v4, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 419
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 421
    iget-object v1, p0, Lcom/sonyericsson/music/library/FolderFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    iget-object v2, p0, Lcom/sonyericsson/music/library/FolderFragment;->mFolderId:Ljava/lang/String;

    invoke-static {v1, v0, p1, v2}, Lcom/sonyericsson/music/common/FolderActions;->deleteFolderTrack(Lcom/sonyericsson/music/MusicActivity;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 434
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return v3

    .line 410
    :sswitch_5
    :try_start_6
    iget-object p1, p0, Lcom/sonyericsson/music/library/FolderFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 411
    invoke-direct {p0}, Lcom/sonyericsson/music/library/FolderFragment;->getFolderName()Ljava/lang/String;

    move-result-object v2

    .line 410
    invoke-static {p1, v0, v5, v2, v1}, Lcom/sonyericsson/music/common/FolderActions;->addFolderTrackToDialog(Lcom/sonyericsson/music/MusicActivity;Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 434
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return v3

    :goto_2
    return v1

    :catchall_0
    move-exception p1

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 435
    throw p1

    :cond_4
    :goto_3
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_5
        0x8 -> :sswitch_4
        0xa -> :sswitch_3
        0xc -> :sswitch_2
        0xf -> :sswitch_1
        0x14 -> :sswitch_0
        0x15 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 147
    invoke-super {p0, p1}, Lcom/sonyericsson/music/library/LibraryListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 149
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "aggregator"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    iput-object v0, p0, Lcom/sonyericsson/music/library/FolderFragment;->mAggregator:Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    if-eqz p1, :cond_0

    const-string v0, "folder-art-uri"

    .line 152
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcom/sonyericsson/music/library/FolderFragment;->mFolderArtUri:Landroid/net/Uri;

    goto :goto_0

    .line 154
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "folder-art-uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcom/sonyericsson/music/library/FolderFragment;->mFolderArtUri:Landroid/net/Uri;

    .line 157
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700c3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/music/library/FolderFragment;->mDefaultArtSize:I

    .line 158
    new-instance p1, Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    iget-object v0, p0, Lcom/sonyericsson/music/library/FolderFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-direct {p1, v0}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sonyericsson/music/library/FolderFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    .line 160
    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/music/library/FolderFragment;->getFolderId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 161
    invoke-direct {p0}, Lcom/sonyericsson/music/library/FolderFragment;->getFolderName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/sonyericsson/music/library/FolderFragment;->getFolderPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/sonyericsson/music/library/FolderFragment;->getFolderArtUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sonyericsson/music/library/FolderFragment;->setFolderData(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8

    .line 299
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 301
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget p2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 302
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 304
    iget-object v1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v1, p2}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getItemViewType(I)I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    return-void

    .line 308
    :cond_0
    new-instance v1, Lcom/sonyericsson/music/common/ContextMenuBuilder;

    invoke-direct {v1}, Lcom/sonyericsson/music/common/ContextMenuBuilder;-><init>()V

    .line 309
    iget-object v2, p0, Lcom/sonyericsson/music/library/LibraryBaseFragment;->mPlayerController:Lcom/sonyericsson/music/player/PlayerController;

    if-eqz v2, :cond_1

    .line 310
    invoke-virtual {v2}, Lcom/sonyericsson/music/player/PlayerController;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/music/player/PlayerState;->isInPlayQueueMode()Z

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 312
    :goto_0
    invoke-static {v0}, Lcom/sonyericsson/music/common/DBUtils;->copySingleRow(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v3

    .line 313
    iget-object v4, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v4}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getHeaderCount()I

    move-result v4

    sub-int/2addr p2, v4

    .line 314
    new-instance v4, Lcom/sonyericsson/music/library/FolderFragment$ContextMenuData;

    invoke-direct {v4, v3, p2}, Lcom/sonyericsson/music/library/FolderFragment$ContextMenuData;-><init>(Landroid/database/Cursor;I)V

    invoke-virtual {p0, v4}, Lcom/sonyericsson/music/library/LibraryListFragment;->setContextMenuData(Ljava/lang/Object;)V

    const-string p2, "_display_name"

    .line 317
    invoke-interface {v0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    .line 316
    invoke-interface {v0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 319
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryBaseFragment;->mPlayerController:Lcom/sonyericsson/music/player/PlayerController;

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 320
    invoke-virtual {v0}, Lcom/sonyericsson/music/player/PlayerController;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/player/PlayerState;->getCurrentTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 321
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getId()J

    move-result-wide v4

    goto :goto_1

    :cond_2
    const-wide/16 v4, -0x1

    .line 323
    :goto_1
    iget-wide v6, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    cmp-long p3, v6, v4

    if-eqz p3, :cond_3

    .line 324
    invoke-virtual {v1, v3}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setDeleteFromStorage(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    .line 328
    :cond_3
    invoke-virtual {v1, p2}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setTitle(Ljava/lang/String;)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setEnqueue(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setSend(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setAddTo(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object p2

    .line 329
    invoke-virtual {p2, v3}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setEditMusicInfo(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setAddToFavorites(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->build(Landroid/view/ContextMenu;)V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 291
    invoke-direct {p0}, Lcom/sonyericsson/music/library/FolderFragment;->getFolderUri()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/library/FolderFragment;->mTracksUri:Landroid/net/Uri;

    .line 292
    new-instance p1, Lcom/sonyericsson/music/library/FolderLoader;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p0}, Lcom/sonyericsson/music/library/FolderFragment;->getFolderId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/sonyericsson/music/library/FolderLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/sonyericsson/music/library/FolderFragment;->mFolderData:Lcom/sonyericsson/music/common/MenuUtils$FolderData;

    if-eqz v0, :cond_0

    const v0, 0x7f0d0008

    .line 335
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 337
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/music/library/LibraryBaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 170
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/music/library/LibraryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0c003e

    const/4 v0, 0x0

    .line 172
    invoke-virtual {p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/ui/LibraryImageHeaderLayout;

    iput-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mTitleHeaderView:Lcom/sonyericsson/music/ui/LibraryImageHeaderLayout;

    .line 174
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mTitleHeaderView:Lcom/sonyericsson/music/ui/LibraryImageHeaderLayout;

    const p3, 0x7f0900db

    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sonyericsson/music/library/FolderFragment;->mFolderArtImage:Landroid/widget/ImageView;

    .line 175
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mTitleHeaderView:Lcom/sonyericsson/music/ui/LibraryImageHeaderLayout;

    const p3, 0x7f09008a

    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sonyericsson/music/library/FolderFragment;->mFolderArtDefaultImage:Landroid/widget/ImageView;

    .line 176
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mTitleHeaderView:Lcom/sonyericsson/music/ui/LibraryImageHeaderLayout;

    const p3, 0x7f0901eb

    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sonyericsson/music/library/FolderFragment;->mNumberOfTracks:Landroid/widget/TextView;

    .line 177
    iget-object p1, p0, Lcom/sonyericsson/music/library/FolderFragment;->mNumberOfTracks:Landroid/widget/TextView;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    invoke-direct {p0}, Lcom/sonyericsson/music/library/FolderFragment;->getFolderArtUri()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 181
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/library/FolderFragment;->setAlbumArt(Landroid/net/Uri;)V

    .line 184
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/music/library/FolderFragment;->getFolderPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/library/FolderFragment;->setHeaderInfoFolderPath(Ljava/lang/String;)V

    .line 185
    invoke-direct {p0}, Lcom/sonyericsson/music/library/FolderFragment;->getFolderName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/library/LibraryListFragment;->setHeaderViewWithTitle(Ljava/lang/String;)V

    return-object p2
.end method

.method public onDestroy()V
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/sonyericsson/music/library/FolderFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {v0}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->destroy()V

    const/4 v0, 0x0

    .line 229
    iput-object v0, p0, Lcom/sonyericsson/music/library/FolderFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    .line 231
    :cond_0
    invoke-super {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    .line 209
    iput-object v0, p0, Lcom/sonyericsson/music/library/FolderFragment;->mShuffleView:Landroid/view/View;

    .line 210
    invoke-super {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->onDestroyView()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 221
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    .line 222
    iput-object v0, p0, Lcom/sonyericsson/music/library/FolderFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 441
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {p1, p3}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getItemViewType(I)I

    move-result p1

    const/4 p2, 0x0

    const/4 p4, 0x1

    const/4 p5, -0x2

    if-ne p1, p5, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 442
    :goto_0
    iget-boolean p5, p0, Lcom/sonyericsson/music/library/FolderFragment;->mTrackListEmpty:Z

    if-nez p5, :cond_7

    iget-object p5, p0, Lcom/sonyericsson/music/library/FolderFragment;->mTracksUri:Landroid/net/Uri;

    if-nez p5, :cond_1

    goto :goto_2

    .line 445
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p5

    check-cast p5, Lcom/sonyericsson/music/MusicActivity;

    .line 447
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getHeaderCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    if-ne p3, v1, :cond_2

    const/4 p2, 0x1

    :cond_2
    if-eqz p5, :cond_6

    .line 451
    invoke-virtual {p5}, Landroid/app/Activity;->isFinishing()Z

    move-result p4

    if-nez p4, :cond_6

    if-nez p2, :cond_3

    .line 452
    invoke-direct {p0, p3, p5}, Lcom/sonyericsson/music/library/FolderFragment;->validatePlaybackRights(ILcom/sonyericsson/music/MusicActivity;)Z

    move-result p4

    if-eqz p4, :cond_6

    :cond_3
    if-eqz p1, :cond_4

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    sub-int/2addr p3, v0

    .line 458
    new-instance p1, Lcom/sonyericsson/music/common/OpenAndPlayConditions;

    invoke-direct {p1}, Lcom/sonyericsson/music/common/OpenAndPlayConditions;-><init>()V

    invoke-virtual {p1, p3}, Lcom/sonyericsson/music/common/OpenAndPlayConditions;->setTracksPosition(I)Lcom/sonyericsson/music/common/OpenAndPlayConditions;

    move-result-object p1

    .line 459
    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/common/OpenAndPlayConditions;->setShuffle(Z)Lcom/sonyericsson/music/common/OpenAndPlayConditions;

    move-result-object p1

    .line 461
    iget-object p2, p0, Lcom/sonyericsson/music/library/FolderFragment;->mTracksUri:Landroid/net/Uri;

    invoke-virtual {p5, p2, p1}, Lcom/sonyericsson/music/MusicActivity;->openAndPlayContent(Landroid/net/Uri;Lcom/sonyericsson/music/common/OpenAndPlayConditions;)Z

    .line 463
    iget-object p1, p0, Lcom/sonyericsson/music/library/FolderFragment;->mAggregator:Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    if-eqz p1, :cond_5

    .line 464
    invoke-virtual {p1, p5}, Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;->sendPlay(Landroid/content/Context;)V

    :cond_5
    return-void

    :cond_6
    :goto_1
    return-void

    :cond_7
    :goto_2
    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .line 248
    iget-boolean v0, p0, Lcom/sonyericsson/music/library/LibraryBaseFragment;->mViewDestroyed:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sonyericsson/music/library/FolderFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 252
    :cond_0
    invoke-virtual {p1}, Landroidx/loader/content/Loader;->getId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    if-eqz p2, :cond_2

    .line 253
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 265
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->removeNoContentHeaderView()V

    .line 266
    invoke-direct {p0}, Lcom/sonyericsson/music/library/FolderFragment;->getShuffleView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/library/LibraryListFragment;->addHeader(Landroid/view/View;)Z

    .line 267
    invoke-direct {p0, p2}, Lcom/sonyericsson/music/library/FolderFragment;->setHeaderInfoNbrOfTracks(Landroid/database/Cursor;)V

    .line 269
    iget-object v0, p0, Lcom/sonyericsson/music/library/FolderFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    const-string v2, "artist"

    const-string v3, "album"

    const-string v4, "album_id"

    .line 270
    invoke-static {v0, p2, v2, v3, v4}, Lcom/sonyericsson/music/common/AlbumArtUtils;->getFolderArtUri(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 272
    iget-object v2, p0, Lcom/sonyericsson/music/library/FolderFragment;->mFolderArtUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 275
    iget-object v2, p0, Lcom/sonyericsson/music/library/FolderFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-direct {p0}, Lcom/sonyericsson/music/library/FolderFragment;->getFolderUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/music/common/RefreshPlaylistArtService;->update(Landroid/content/Context;Landroid/net/Uri;)V

    .line 277
    iput-object v0, p0, Lcom/sonyericsson/music/library/FolderFragment;->mFolderArtUri:Landroid/net/Uri;

    .line 278
    iget-object v0, p0, Lcom/sonyericsson/music/library/FolderFragment;->mFolderArtUri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/library/FolderFragment;->setAlbumArt(Landroid/net/Uri;)V

    goto :goto_1

    .line 255
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/music/library/FolderFragment;->mShuffleView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/library/LibraryListFragment;->removeHeader(Landroid/view/View;)V

    .line 256
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->showNoContentHeaderView()V

    .line 257
    iput-boolean v1, p0, Lcom/sonyericsson/music/library/FolderFragment;->mTrackListEmpty:Z

    .line 258
    invoke-direct {p0, p2}, Lcom/sonyericsson/music/library/FolderFragment;->setHeaderInfoNbrOfTracks(Landroid/database/Cursor;)V

    const/4 v0, 0x0

    .line 259
    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/library/FolderFragment;->setAlbumArt(Landroid/net/Uri;)V

    .line 260
    iget-boolean v0, p0, Lcom/sonyericsson/music/library/FolderFragment;->mNotFirstLoad:Z

    if-eqz v0, :cond_3

    .line 261
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->popBackStack()V

    .line 281
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/music/library/LibraryListFragment;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

    .line 283
    iput-boolean v1, p0, Lcom/sonyericsson/music/library/FolderFragment;->mNotFirstLoad:Z

    :cond_4
    return-void

    :cond_5
    :goto_2
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 61
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/music/library/FolderFragment;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onNowPlayingInfoChanged(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V
    .locals 3

    .line 588
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/library/FolderAdapter;

    if-eqz p1, :cond_0

    .line 590
    invoke-virtual {p1}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->getSourceUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/music/library/BaseFragment;->matchUri(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 591
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/library/FolderAdapter;->setNowPlayingInfo(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 593
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/library/FolderAdapter;->setNowPlayingInfo(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V

    .line 595
    :goto_0
    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 343
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090105

    const/4 v2, -0x1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const/4 v0, -0x1

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x15

    goto :goto_0

    :pswitch_1
    const/16 v0, 0xc

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    :goto_0
    if-le v0, v2, :cond_1

    .line 354
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/music/library/FolderFragment;->mFolderData:Lcom/sonyericsson/music/common/MenuUtils$FolderData;

    iget-object v3, p0, Lcom/sonyericsson/music/library/FolderFragment;->mAggregator:Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    invoke-static {v1, v0, v2, v3}, Lcom/sonyericsson/music/common/MenuUtils;->onFolderContextItemSelected(Lcom/sonyericsson/music/MusicActivity;ILcom/sonyericsson/music/common/MenuUtils$FolderData;Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 358
    :cond_1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x7f09010e
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .line 197
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 198
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->getNowPlayingUpdater()Lcom/sonyericsson/music/NowPlayingUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/music/NowPlayingUpdater;->removeListener(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfoListener;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 191
    invoke-super {p0}, Lcom/sonyericsson/music/library/BaseFragment;->onResume()V

    .line 192
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->getNowPlayingUpdater()Lcom/sonyericsson/music/NowPlayingUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/music/NowPlayingUpdater;->addListener(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfoListener;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "folder-art-uri"

    .line 203
    iget-object v1, p0, Lcom/sonyericsson/music/library/FolderFragment;->mFolderArtUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 204
    invoke-super {p0, p1}, Lcom/sonyericsson/music/library/LibraryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method setAlbumArt(Landroid/net/Uri;)V
    .locals 8

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 539
    iget-object p1, p0, Lcom/sonyericsson/music/library/FolderFragment;->mFolderArtDefaultImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 540
    iget-object p1, p0, Lcom/sonyericsson/music/library/FolderFragment;->mFolderArtImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 544
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 545
    invoke-direct {p0}, Lcom/sonyericsson/music/library/FolderFragment;->getFolderName()Ljava/lang/String;

    move-result-object v6

    .line 546
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 547
    new-instance v7, Lcom/sonyericsson/music/library/FolderFragment$ArtDecoderListener;

    iget-object p1, p0, Lcom/sonyericsson/music/library/FolderFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    iget-object v0, p0, Lcom/sonyericsson/music/library/FolderFragment;->mFolderArtImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sonyericsson/music/library/FolderFragment;->mFolderArtDefaultImage:Landroid/widget/ImageView;

    invoke-direct {v7, p1, v0, v1}, Lcom/sonyericsson/music/library/FolderFragment$ArtDecoderListener;-><init>(Landroid/app/Activity;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 550
    iget-object v1, p0, Lcom/sonyericsson/music/library/FolderFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v3

    iget v5, p0, Lcom/sonyericsson/music/library/FolderFragment;->mDefaultArtSize:I

    move v4, v5

    invoke-virtual/range {v1 .. v7}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->load(Ljava/lang/String;IIILjava/lang/String;Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;)Z

    goto :goto_0

    .line 554
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/music/library/FolderFragment;->mFolderArtDefaultImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sonyericsson/music/library/FolderFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080098

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 556
    iget-object p1, p0, Lcom/sonyericsson/music/library/FolderFragment;->mFolderArtDefaultImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 557
    iget-object p1, p0, Lcom/sonyericsson/music/library/FolderFragment;->mFolderArtImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method
