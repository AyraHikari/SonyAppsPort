.class public Lcom/sonyericsson/music/picker/ArtistPickerFragment;
.super Lcom/sonyericsson/music/library/LibraryListFragment;
.source "ArtistPickerFragment.java"


# static fields
.field private static final LOAD_LOCAL:I = 0x2

.field private static final LOAD_NON_MUSIC:I = 0x1


# instance fields
.field private final SHORTCUT_ID_ARTIST_PREFIX:Ljava/lang/String;

.field private mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

.field private mArtistCursor:Landroid/database/Cursor;

.field private mArtistCursorLoaded:Z

.field private mCreateShortcut:Z

.field private mNonMusicCursor:Landroid/database/Cursor;

.field private mNonMusicCursorLoaded:Z

.field private mSoundFilesHeaderView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;-><init>()V

    const-string v0, "music-shortcut-artist-"

    .line 62
    iput-object v0, p0, Lcom/sonyericsson/music/picker/ArtistPickerFragment;->SHORTCUT_ID_ARTIST_PREFIX:Ljava/lang/String;

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/sonyericsson/music/picker/ArtistPickerFragment;->mNonMusicCursor:Landroid/database/Cursor;

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/sonyericsson/music/picker/ArtistPickerFragment;->mNonMusicCursorLoaded:Z

    .line 83
    iput-boolean v0, p0, Lcom/sonyericsson/music/picker/ArtistPickerFragment;->mArtistCursorLoaded:Z

    return-void
.end method

.method private createShortCut(JLandroid/view/View;)V
    .locals 9

    .line 308
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    .line 309
    new-instance v6, Landroid/content/Intent;

    const-class v0, Lcom/sonyericsson/music/MusicActivity;

    invoke-direct {v6, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    .line 312
    invoke-virtual {p3, v0}, Landroid/app/Activity;->setResult(I)V

    .line 313
    invoke-virtual {p3}, Landroid/app/Activity;->finish()V

    return-void

    .line 317
    :cond_0
    invoke-virtual {p3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/sonyericsson/music/common/DBUtils;->getArtistName(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    .line 319
    invoke-virtual {v6, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "vnd.android.cursor.dir/artists"

    .line 320
    invoke-virtual {v6, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "ARTIST"

    .line 321
    invoke-virtual {v6, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-lez v5, :cond_2

    .line 326
    invoke-virtual {p3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700cd

    .line 327
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 329
    invoke-static {p3, p1, p2, v3}, Lcom/sonyericsson/music/common/ArtistImageUtils;->getArtistShortcutImage(Landroid/content/Context;JI)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 338
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 339
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-ge v7, v5, :cond_1

    .line 342
    div-int/lit8 v5, v5, 0x2

    div-int/lit8 v8, v7, 0x2

    sub-int/2addr v5, v8

    .line 343
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 345
    invoke-static {v4, v5, v0, v7, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    move v5, v7

    goto :goto_0

    .line 347
    :cond_1
    div-int/lit8 v7, v7, 0x2

    div-int/lit8 v8, v5, 0x2

    sub-int/2addr v7, v8

    .line 348
    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 350
    invoke-static {v4, v0, v7, v5, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 354
    invoke-static {v0, v3, v5}, Lcom/sonyericsson/music/common/AlbumArtUtils;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eq v2, v0, :cond_2

    .line 357
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    move-object v3, v2

    const-string v0, "<unknown>"

    .line 364
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 365
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100191

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_1

    :cond_3
    move-object v7, v1

    .line 368
    :goto_1
    sget-boolean v0, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_Q_API:Z

    if-eqz v0, :cond_4

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "music-shortcut-artist-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0801ad

    move-object v0, p3

    move-object v1, v7

    move-object v4, v6

    .line 370
    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/music/library/LibraryListFragment;->createShortcutIntentResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object p1

    goto :goto_2

    .line 374
    :cond_4
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    if-eqz v3, :cond_5

    const-string p2, "android.intent.extra.shortcut.ICON"

    .line 376
    invoke-virtual {p1, p2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_2

    :cond_5
    const-string p2, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v0, 0x7f0801ad

    .line 379
    invoke-static {p3, v0}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v0

    .line 378
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_2
    const-string p2, "android.intent.extra.shortcut.INTENT"

    .line 382
    invoke-virtual {p1, p2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p2, "android.intent.extra.shortcut.NAME"

    .line 383
    invoke-virtual {p1, p2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, -0x1

    .line 385
    invoke-virtual {p3, p2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 386
    invoke-virtual {p3}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private getAudioFilesHeaderView(I)Landroid/view/View;
    .locals 4

    .line 248
    iget-object v0, p0, Lcom/sonyericsson/music/picker/ArtistPickerFragment;->mSoundFilesHeaderView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 249
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c0059

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/picker/ArtistPickerFragment;->mSoundFilesHeaderView:Landroid/view/View;

    .line 251
    iget-object v0, p0, Lcom/sonyericsson/music/picker/ArtistPickerFragment;->mSoundFilesHeaderView:Landroid/view/View;

    const v1, 0x7f0900db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 252
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0801f2

    invoke-static {v1, v2}, Lcom/sonyericsson/music/common/UIUtils;->getTintedDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 253
    iget-object v0, p0, Lcom/sonyericsson/music/picker/ArtistPickerFragment;->mSoundFilesHeaderView:Landroid/view/View;

    const v1, 0x7f0901fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f1001ba

    .line 254
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v0, p0, Lcom/sonyericsson/music/picker/ArtistPickerFragment;->mSoundFilesHeaderView:Landroid/view/View;

    const v1, 0x7f0901fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f10018c

    const/4 v2, 0x1

    .line 256
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/picker/ArtistPickerFragment;->mSoundFilesHeaderView:Landroid/view/View;

    return-object p1
.end method

.method public static newInstance()Lcom/sonyericsson/music/picker/ArtistPickerFragment;
    .locals 1

    .line 65
    new-instance v0, Lcom/sonyericsson/music/picker/ArtistPickerFragment;

    invoke-direct {v0}, Lcom/sonyericsson/music/picker/ArtistPickerFragment;-><init>()V

    return-object v0
.end method

.method private resetCursors()V
    .locals 1

    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Lcom/sonyericsson/music/picker/ArtistPickerFragment;->mNonMusicCursorLoaded:Z

    .line 131
    iput-boolean v0, p0, Lcom/sonyericsson/music/picker/ArtistPickerFragment;->mArtistCursorLoaded:Z

    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lcom/sonyericsson/music/picker/ArtistPickerFragment;->mArtistCursor:Landroid/database/Cursor;

    .line 133
    iput-object v0, p0, Lcom/sonyericsson/music/picker/ArtistPickerFragment;->mNonMusicCursor:Landroid/database/Cursor;

    return-void
.end method

.method private soundListItem(I)Z
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getHeaderCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method protected getAdapter()Landroid/widget/ListAdapter;
    .locals 4

    .line 110
    iget-object v0, p0, Lcom/sonyericsson/music/picker/ArtistPickerFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/music/picker/ArtistPickerFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    :cond_0
    const/4 v0, 0x0

    .line 114
    new-instance v1, Lcom/sonyericsson/music/library/ArtistsAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/music/picker/ArtistPickerFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    invoke-direct {v1, v2, v3, v0}, Lcom/sonyericsson/music/library/ArtistsAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/music/artdecoder/ArtDecoder;Z)V

    return-object v1
.end method

.method protected getHeaderView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getLoaderIds()[I
    .locals 1

    const/4 v0, 0x2

    .line 103
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x2
        0x1
    .end array-data
.end method

.method protected getMusicActivity()Lcom/sonyericsson/music/MusicActivity;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getNoContentText()Ljava/lang/String;
    .locals 1

    const v0, 0x7f100218

    .line 235
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSystemUIConfig()Lcom/sonyericsson/music/library/SystemUIConfig;
    .locals 1

    .line 423
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/music/library/SystemUIConfig;->noActionBar(Landroid/content/Context;)Lcom/sonyericsson/music/library/SystemUIConfig;

    move-result-object v0

    return-object v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 8
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

    .line 138
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 p2, 0x0

    if-eqz v1, :cond_1

    .line 140
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-ne v0, p1, :cond_0

    .line 142
    iput-boolean v2, p0, Lcom/sonyericsson/music/picker/ArtistPickerFragment;->mNonMusicCursorLoaded:Z

    .line 143
    iput-object p2, p0, Lcom/sonyericsson/music/picker/ArtistPickerFragment;->mNonMusicCursor:Landroid/database/Cursor;

    .line 145
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100191

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "unknown_artist"

    .line 150
    invoke-static {v1}, Lcom/sonyericsson/music/common/LibraryArtistsQueryParams;->getAudioColumns(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-static {p1, p2, v0}, Lcom/sonyericsson/music/common/StringUtils;->getLocalizedStringArray(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string v4, "is_music = 0"

    .line 154
    sget-object v2, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 155
    new-instance p1, Lcom/sonyericsson/music/common/PermissionCursorLoader;

    const/4 v5, 0x0

    const-string v6, "date_added DESC"

    const-string v7, "android.permission.READ_EXTERNAL_STORAGE"

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/music/common/PermissionCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    .line 160
    iput-boolean v2, p0, Lcom/sonyericsson/music/picker/ArtistPickerFragment;->mArtistCursorLoaded:Z

    .line 161
    iput-object p2, p0, Lcom/sonyericsson/music/picker/ArtistPickerFragment;->mArtistCursor:Landroid/database/Cursor;

    .line 163
    invoke-static {}, Lcom/sonyericsson/music/common/LibraryArtistsQueryParams;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 164
    invoke-static {v1}, Lcom/sonyericsson/music/common/LibraryArtistsQueryParams;->getArtistsColumns(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    .line 165
    invoke-static {}, Lcom/sonyericsson/music/common/LibraryArtistsQueryParams;->getSelection()Ljava/lang/String;

    move-result-object v4

    .line 166
    invoke-static {}, Lcom/sonyericsson/music/common/LibraryArtistsQueryParams;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v5

    .line 167
    invoke-static {v1}, Lcom/sonyericsson/music/common/LibraryArtistsQueryParams;->getSortOrder(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 169
    new-instance p1, Lcom/sonyericsson/music/common/PermissionCursorLoader;

    const-string v7, "android.permission.READ_EXTERNAL_STORAGE"

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/music/common/PermissionCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_1
    return-object p2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 91
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/music/library/LibraryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 93
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string p3, "android.intent.action.CREATE_SHORTCUT"

    .line 95
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    .line 96
    iput-boolean p2, p0, Lcom/sonyericsson/music/picker/ArtistPickerFragment;->mCreateShortcut:Z

    :cond_0
    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    .line 240
    iput-object v0, p0, Lcom/sonyericsson/music/picker/ArtistPickerFragment;->mSoundFilesHeaderView:Landroid/view/View;

    .line 241
    invoke-super {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->onDestroyView()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 264
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/sonymobile/music/common/FragmentUtil;->isFragmentTransactionAllowed(Landroidx/fragment/app/FragmentActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 268
    :cond_0
    iget-boolean p1, p0, Lcom/sonyericsson/music/picker/ArtistPickerFragment;->mCreateShortcut:Z

    if-eqz p1, :cond_1

    .line 269
    invoke-direct {p0, p4, p5, p2}, Lcom/sonyericsson/music/picker/ArtistPickerFragment;->createShortCut(JLandroid/view/View;)V

    goto :goto_0

    .line 270
    :cond_1
    invoke-direct {p0, p3}, Lcom/sonyericsson/music/picker/ArtistPickerFragment;->soundListItem(I)Z

    move-result p1

    const p2, 0x7f090181

    const p3, 0x7f010015

    const v0, 0x7f010014

    const/4 v1, 0x0

    const v2, 0x7f010013

    if-eqz p1, :cond_2

    .line 272
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 273
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 274
    invoke-static {}, Lcom/sonyericsson/music/picker/SoundPickerFragment;->newInstance()Lcom/sonyericsson/music/picker/SoundPickerFragment;

    move-result-object p4

    .line 275
    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 276
    invoke-virtual {p1, v0, v2, p3, v2}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(IIII)Landroidx/fragment/app/FragmentTransaction;

    .line 278
    invoke-virtual {p1, p2, p4}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 279
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 282
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-wide/16 v3, -0x1

    cmp-long v5, p4, v3

    if-lez v5, :cond_3

    .line 284
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p4, p5}, Lcom/sonyericsson/music/common/DBUtils;->getArtistName(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v3

    .line 285
    invoke-static {p1, v3}, Lcom/sonyericsson/music/common/StringUtils;->replaceUnknownArtistWithLocalizedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 288
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    .line 289
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    .line 292
    invoke-static {p4, p5}, Lcom/sonyericsson/music/picker/ArtistAlbumPickerFragment;->newInstance(J)Lcom/sonyericsson/music/picker/ArtistAlbumPickerFragment;

    move-result-object p4

    .line 294
    invoke-virtual {v3, v1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 295
    invoke-virtual {v3, p1}, Landroidx/fragment/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroidx/fragment/app/FragmentTransaction;

    .line 296
    invoke-virtual {v3, v0, v2, p3, v2}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(IIII)Landroidx/fragment/app/FragmentTransaction;

    .line 298
    invoke-virtual {v3, p2, p4}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 299
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    .line 301
    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    .line 302
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V
    .locals 4
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

    .line 178
    iget-boolean v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mShowLoadingProgress:Z

    if-nez v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->stopProgress()V

    .line 182
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/music/library/LibraryBaseFragment;->mViewDestroyed:Z

    if-nez v0, :cond_c

    .line 183
    invoke-virtual {p1}, Landroidx/loader/content/Loader;->getId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_1

    .line 184
    iput-boolean v2, p0, Lcom/sonyericsson/music/picker/ArtistPickerFragment;->mNonMusicCursorLoaded:Z

    .line 185
    iput-object p2, p0, Lcom/sonyericsson/music/picker/ArtistPickerFragment;->mNonMusicCursor:Landroid/database/Cursor;

    if-eqz p2, :cond_3

    .line 186
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    iget-boolean v0, p0, Lcom/sonyericsson/music/picker/ArtistPickerFragment;->mCreateShortcut:Z

    if-nez v0, :cond_3

    .line 187
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p2

    .line 188
    invoke-direct {p0, p2}, Lcom/sonyericsson/music/picker/ArtistPickerFragment;->getAudioFilesHeaderView(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sonyericsson/music/library/LibraryListFragment;->addHeader(Landroid/view/View;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 191
    invoke-virtual {p1}, Landroidx/loader/content/Loader;->getId()I

    move-result v3

    if-ne v0, v3, :cond_3

    .line 192
    iput-boolean v2, p0, Lcom/sonyericsson/music/picker/ArtistPickerFragment;->mArtistCursorLoaded:Z

    if-eqz p2, :cond_2

    .line 194
    new-instance v0, Lcom/sonyericsson/music/library/ArtistsCursorWrapper;

    invoke-direct {v0, p2}, Lcom/sonyericsson/music/library/ArtistsCursorWrapper;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/sonyericsson/music/picker/ArtistPickerFragment;->mArtistCursor:Landroid/database/Cursor;

    goto :goto_0

    .line 196
    :cond_2
    iput-object v1, p0, Lcom/sonyericsson/music/picker/ArtistPickerFragment;->mArtistCursor:Landroid/database/Cursor;

    .line 200
    :cond_3
    :goto_0
    iget-boolean p2, p0, Lcom/sonyericsson/music/picker/ArtistPickerFragment;->mNonMusicCursorLoaded:Z

    if-eqz p2, :cond_c

    iget-boolean p2, p0, Lcom/sonyericsson/music/picker/ArtistPickerFragment;->mArtistCursorLoaded:Z

    if-eqz p2, :cond_c

    .line 201
    iget-object p2, p0, Lcom/sonyericsson/music/picker/ArtistPickerFragment;->mArtistCursor:Landroid/database/Cursor;

    if-eqz p2, :cond_4

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-gtz p2, :cond_5

    :cond_4
    iget-object p2, p0, Lcom/sonyericsson/music/picker/ArtistPickerFragment;->mNonMusicCursor:Landroid/database/Cursor;

    if-eqz p2, :cond_b

    .line 202
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-lez p2, :cond_b

    :cond_5
    const/4 p2, 0x0

    .line 206
    iget-object v0, p0, Lcom/sonyericsson/music/picker/ArtistPickerFragment;->mArtistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 207
    iget-object v1, p0, Lcom/sonyericsson/music/picker/ArtistPickerFragment;->mArtistCursor:Landroid/database/Cursor;

    .line 208
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->removeNoContentHeaderView()V

    goto :goto_1

    .line 209
    :cond_6
    iget-boolean v0, p0, Lcom/sonyericsson/music/picker/ArtistPickerFragment;->mCreateShortcut:Z

    if-eqz v0, :cond_7

    const/4 p2, 0x1

    goto :goto_1

    .line 211
    :cond_7
    iget-object v0, p0, Lcom/sonyericsson/music/picker/ArtistPickerFragment;->mNonMusicCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_9

    .line 212
    :cond_8
    iget-object v1, p0, Lcom/sonyericsson/music/picker/ArtistPickerFragment;->mArtistCursor:Landroid/database/Cursor;

    .line 213
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->showNoContentHeaderView()V

    :cond_9
    :goto_1
    if-eqz p2, :cond_a

    .line 217
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->showNoContentHeaderView()V

    .line 219
    :cond_a
    invoke-super {p0, p1, v1}, Lcom/sonyericsson/music/library/LibraryListFragment;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

    goto :goto_2

    .line 221
    :cond_b
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->showNoContentHeaderView()V

    .line 222
    invoke-super {p0, p1, v1}, Lcom/sonyericsson/music/library/LibraryListFragment;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

    :cond_c
    :goto_2
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 56
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/music/picker/ArtistPickerFragment;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .line 125
    invoke-direct {p0}, Lcom/sonyericsson/music/picker/ArtistPickerFragment;->resetCursors()V

    .line 126
    invoke-super {p0, p1}, Lcom/sonyericsson/music/library/LibraryListFragment;->onLoaderReset(Landroidx/loader/content/Loader;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 119
    invoke-direct {p0}, Lcom/sonyericsson/music/picker/ArtistPickerFragment;->resetCursors()V

    .line 120
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method protected usesStoragePermission()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
