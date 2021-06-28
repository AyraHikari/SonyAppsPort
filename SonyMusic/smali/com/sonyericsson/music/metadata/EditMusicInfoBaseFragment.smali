.class public abstract Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;
.super Lcom/sonyericsson/music/library/BaseFragment;
.source "EditMusicInfoBaseFragment.java"

# interfaces
.implements Lcom/sonyericsson/music/metadata/EditMusicInfoActivity$BackListener;
.implements Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask$RetainedAsyncTaskListener;
.implements Lcom/sonyericsson/music/metadata/ImageUpdateContextMenu$OnActionSelected;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ArtAction;,
        Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$EmbeddedArtLoader;,
        Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ProgressRunnable;,
        Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$DiscardDialog;,
        Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ImageClickListener;
    }
.end annotation


# static fields
.field protected static final DELAY_MILLIS:I = 0x3e8

.field private static final FILE_URI_PREFIX:Ljava/lang/String; = "file://"

.field private static final KEY_CURRENT_ASYNC_TASK:Ljava/lang/String; = "current_async_task"

.field private static final KEY_DATA:Ljava/lang/String; = "metadata"

.field private static final KEY_DEFAULT_ART_TASK:Ljava/lang/String; = "default_art_task"

.field private static final KEY_FETCH_INFO_TASK:Ljava/lang/String; = "loading_task"

.field protected static final KEY_ID:Ljava/lang/String; = "id"

.field private static final KEY_SAVE_INFO_TASK:Ljava/lang/String; = "save_task"

.field private static final REQUEST_ALBUM_IMAGE:I = 0x1

.field private static final REQUEST_ALBUM_IMAGE_CROP:I = 0x2

.field private static final REQUEST_ARTIST_IMAGE:I = 0x3

.field private static final REQUEST_ARTIST_IMAGE_CROP:I = 0x4

.field public static final TAG:Ljava/lang/String; = "EditMusicInfoBaseFragment"


# instance fields
.field protected mActivity:Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;

.field protected mAlbum:Landroid/widget/EditText;

.field protected mArtist:Landroid/widget/EditText;

.field protected mCurrentAlbumArtImageView:Landroid/widget/ImageView;

.field private mCurrentAsyncTask:Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;

.field private mCurrentAsyncTaskKey:Ljava/lang/String;

.field private mEditIndicator:Landroid/view/View;

.field protected mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

.field protected mHandler:Landroid/os/Handler;

.field protected mHeaderArtImageView:Landroid/widget/ImageView;

.field protected mHeaderTextView:Landroid/widget/TextView;

.field private mId:J

.field protected mImageClickListener:Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ImageClickListener;

.field private mIsFirstStart:Z

.field private mLoadingRunnable:Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ProgressRunnable;

.field protected mRootView:Landroid/view/ViewGroup;

.field private mSavingRunnable:Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ProgressRunnable;

.field protected mTempEmbeddedAlbumArt:Landroid/graphics/Bitmap;

.field protected mYear:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 67
    invoke-direct {p0}, Lcom/sonyericsson/music/library/BaseFragment;-><init>()V

    const-wide/16 v0, -0x1

    .line 114
    iput-wide v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mId:J

    const/4 v0, 0x1

    .line 118
    iput-boolean v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mIsFirstStart:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;Landroid/content/Context;Z)Ljava/util/ArrayList;
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->getArtActions(Landroid/content/Context;Z)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private getArtActions(Landroid/content/Context;Z)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ArtAction;",
            ">;"
        }
    .end annotation

    .line 633
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 634
    sget-object v0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ArtAction;->SET_IMAGE:Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ArtAction;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    .line 636
    sget-object p2, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ArtAction;->REMOVE_IMAGE:Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ArtAction;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p1
.end method

.method private handleSaveDone(Lcom/sonyericsson/music/metadata/EditMusicInfo;)V
    .locals 3

    .line 522
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->toggleSaveDialog(Landroid/content/Context;ZZ)V

    .line 523
    invoke-virtual {p0}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->removeLoadingDialog()V

    .line 525
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 528
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->createReturnIntent(Lcom/sonyericsson/music/metadata/EditMusicInfo;)Landroid/content/Intent;

    move-result-object p1

    const/4 v1, -0x1

    .line 529
    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 534
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->getSaveErrorToastMessage()I

    move-result p1

    invoke-static {v0, p1, v1}, Lcom/sonyericsson/music/common/MusicToast;->show(Landroid/content/Context;II)V

    .line 535
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 537
    :goto_0
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method private initLoadProgress(Landroid/content/Context;)V
    .locals 3

    .line 569
    new-instance v0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ProgressRunnable;

    const v1, 0x7f100214

    .line 570
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ProgressRunnable;-><init>(Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mLoadingRunnable:Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ProgressRunnable;

    .line 571
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mLoadingRunnable:Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ProgressRunnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private initiatePickImage(I)V
    .locals 2

    .line 506
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    .line 507
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 508
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private isFetchInfoTask(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "loading_task"

    .line 494
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private isFileUri(Landroid/net/Uri;)Z
    .locals 1

    .line 263
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private isGetEmbeddedArtTask(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "default_art_task"

    .line 498
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private isSaveInfoTask(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "save_task"

    .line 502
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private removeImage(Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;)V
    .locals 2

    .line 642
    sget-object v0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$1;->$SwitchMap$com$sonyericsson$music$metadata$EditMusicInfoUtils$ImageType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 649
    :pswitch_0
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setArtistArtChanged(Z)V

    .line 650
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setArtistArt(Ljava/io/File;)V

    .line 651
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mHeaderArtImageView:Landroid/widget/ImageView;

    .line 652
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils;->getDefaultArtistArt(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 651
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 644
    :pswitch_1
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setAlbumArt(Ljava/io/File;)V

    .line 645
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setAlbumArtChanged(Z)V

    .line 646
    invoke-virtual {p0}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->setDefaultAlbumArt()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected static setIfEmpty(Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 563
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 564
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract createReturnIntent(Lcom/sonyericsson/music/metadata/EditMusicInfo;)Landroid/content/Intent;
.end method

.method protected disposeEmbeddedArt()V
    .locals 1

    const/4 v0, 0x0

    .line 467
    iput-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mTempEmbeddedAlbumArt:Landroid/graphics/Bitmap;

    return-void
.end method

.method protected getAlbumImageView()Landroid/widget/ImageView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getFetchInfoTask(Landroid/app/Activity;Ljava/lang/String;J)Lcom/sonyericsson/music/metadata/FetchInfoTask;
.end method

.method protected getHeaderImageClickListener()Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ImageClickListener;
    .locals 2

    .line 373
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mImageClickListener:Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ImageClickListener;

    if-nez v0, :cond_0

    .line 374
    new-instance v0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ImageClickListener;

    sget-object v1, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;->ARTIST:Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ImageClickListener;-><init>(Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;)V

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mImageClickListener:Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ImageClickListener;

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mImageClickListener:Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ImageClickListener;

    return-object v0
.end method

.method protected abstract getInsufficientImageSaveInformationMessage(Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;)I
.end method

.method protected getKeyId()J
    .locals 5

    .line 460
    iget-wide v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mId:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 461
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mId:J

    .line 463
    :cond_0
    iget-wide v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mId:J

    return-wide v0
.end method

.method protected abstract getSaveErrorToastMessage()I
.end method

.method protected abstract getSaveInfoTask(Landroid/app/Activity;Ljava/lang/String;Lcom/sonyericsson/music/metadata/EditMusicInfo;J)Lcom/sonyericsson/music/metadata/SaveInfoTask;
.end method

.method protected getSystemUIConfig()Lcom/sonyericsson/music/library/SystemUIConfig;
    .locals 1

    .line 259
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/music/library/SystemUIConfig;->noActionBar(Landroid/content/Context;)Lcom/sonyericsson/music/library/SystemUIConfig;

    move-result-object v0

    return-object v0
.end method

.method protected getValue(Landroid/widget/EditText;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 452
    :cond_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 456
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public handleBack()Z
    .locals 3

    .line 675
    invoke-virtual {p0}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->hasFieldsChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 676
    invoke-static {}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$DiscardDialog;->newInstance()Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$DiscardDialog;

    move-result-object v0

    .line 677
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "discard_dialog"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method hasDataToSave()Z
    .locals 1

    .line 684
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected abstract hasFieldsChanged()Z
.end method

.method protected abstract hasImageData(Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;)Z
.end method

.method protected isAlbumImageModifiable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActionSelected(Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ArtAction;Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;)V
    .locals 1

    .line 729
    sget-object v0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$1;->$SwitchMap$com$sonyericsson$music$metadata$EditMusicInfoBaseFragment$ArtAction:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 734
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->removeImage(Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;)V

    goto :goto_1

    .line 731
    :pswitch_1
    sget-object p1, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;->ALBUM:Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->initiatePickImage(I)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .line 271
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mActivity:Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;

    const-string v1, "/cache/"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 276
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "tempAlbumFile"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 277
    new-instance v2, Ljava/io/File;

    const-string v3, "tempArtistFile"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "com.sonyericsson.music.fileprovider"

    invoke-static {v0, v3, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 283
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.sonyericsson.music.fileprovider"

    invoke-static {v3, v4, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, -0x1

    if-ne p2, v4, :cond_5

    const/high16 p2, 0x10000

    const/4 v4, 0x3

    const/16 v5, 0x1d

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    if-eqz p3, :cond_5

    .line 345
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mActivity:Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;

    new-instance p2, Landroid/util/Pair;

    sget-object p3, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;->ARTIST:Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;

    invoke-direct {p2, p3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;->setLocalImageData(Landroid/util/Pair;)V

    .line 347
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le p1, v5, :cond_5

    .line 349
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0, v4}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    goto/16 :goto_2

    :pswitch_1
    if-eqz p3, :cond_5

    .line 323
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->isFileUri(Landroid/net/Uri;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 324
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le p1, v5, :cond_1

    .line 327
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils;->getCropImageIntent(Landroid/net/Uri;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    .line 328
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p2

    .line 330
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/ResolveInfo;

    .line 331
    iget-object p3, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p3, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 332
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p3, v3, v4}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_0

    .line 338
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils;->getCropImageIntent(Landroid/net/Uri;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    :cond_2
    const/4 p2, 0x4

    .line 340
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    :pswitch_2
    if-eqz p3, :cond_5

    .line 313
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mActivity:Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;

    new-instance p2, Landroid/util/Pair;

    sget-object p3, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;->ALBUM:Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;

    invoke-direct {p2, p3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;->setLocalImageData(Landroid/util/Pair;)V

    .line 314
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le p1, v5, :cond_5

    .line 316
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0, v4}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    goto :goto_2

    :pswitch_3
    if-eqz p3, :cond_5

    .line 291
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->isFileUri(Landroid/net/Uri;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 292
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le p1, v5, :cond_3

    .line 295
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils;->getCropImageIntent(Landroid/net/Uri;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    .line 296
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p2

    .line 298
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/ResolveInfo;

    .line 299
    iget-object p3, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p3, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 300
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p3, v0, v4}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_1

    .line 306
    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils;->getCropImageIntent(Landroid/net/Uri;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    :cond_4
    const/4 p2, 0x2

    .line 308
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_5
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 122
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 123
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;

    iput-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mActivity:Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 128
    :goto_0
    iput-boolean v1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mIsFirstStart:Z

    .line 129
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mHandler:Landroid/os/Handler;

    .line 134
    iget-boolean v1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mIsFirstStart:Z

    if-eqz v1, :cond_1

    .line 135
    invoke-static {}, Lcom/sonyericsson/music/RetainManager;->getInstance()Lcom/sonyericsson/music/RetainManager;

    move-result-object v1

    const-string v2, "metadata"

    .line 136
    invoke-virtual {v1, v2}, Lcom/sonyericsson/music/RetainManager;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "current_async_task"

    .line 137
    invoke-virtual {v1, v2}, Lcom/sonyericsson/music/RetainManager;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 140
    invoke-virtual {v1, v2}, Lcom/sonyericsson/music/RetainManager;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 142
    invoke-virtual {v1, v2}, Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;->setListener(Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask$RetainedAsyncTaskListener;)V

    .line 143
    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 148
    :cond_1
    invoke-super {p0, p1}, Lcom/sonyericsson/music/library/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 154
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->setupView(Landroid/content/Context;)V

    .line 155
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mRootView:Landroid/view/ViewGroup;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mHeaderArtImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mImageClickListener:Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ImageClickListener;

    if-eqz v0, :cond_1

    .line 252
    iput-object v1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mImageClickListener:Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ImageClickListener;

    .line 254
    :cond_1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 220
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 222
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mCurrentAsyncTask:Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;

    if-eqz v0, :cond_2

    .line 223
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mActivity:Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mCurrentAsyncTask:Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/RetainedAsyncTask;->getRetainKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 226
    invoke-static {}, Lcom/sonyericsson/music/RetainManager;->getInstance()Lcom/sonyericsson/music/RetainManager;

    move-result-object v1

    const-string v2, "current_async_task"

    .line 227
    invoke-virtual {v1, v2, v0}, Lcom/sonyericsson/music/RetainManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 228
    iget-object v2, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mCurrentAsyncTask:Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;

    invoke-virtual {v1, v0, v2}, Lcom/sonyericsson/music/RetainManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mCurrentAsyncTask:Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/RetainedAsyncTask;->cancelAndRemoveTask()V

    .line 233
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mCurrentAsyncTask:Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;->setListener(Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask$RetainedAsyncTaskListener;)V

    .line 234
    iput-object v1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mCurrentAsyncTask:Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;

    .line 237
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mActivity:Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    if-eqz v0, :cond_3

    .line 238
    invoke-static {}, Lcom/sonyericsson/music/RetainManager;->getInstance()Lcom/sonyericsson/music/RetainManager;

    move-result-object v0

    const-string v1, "metadata"

    .line 239
    iget-object v2, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/music/RetainManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 242
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mActivity:Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;->removeBackListener(Lcom/sonyericsson/music/metadata/EditMusicInfoActivity$BackListener;)Z

    return-void
.end method

.method public onResume()V
    .locals 7

    .line 160
    invoke-super {p0}, Lcom/sonyericsson/music/library/BaseFragment;->onResume()V

    .line 162
    invoke-static {}, Lcom/sonyericsson/music/RetainManager;->getInstance()Lcom/sonyericsson/music/RetainManager;

    move-result-object v0

    const-string v1, "metadata"

    .line 163
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/RetainManager;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/metadata/EditMusicInfo;

    iput-object v1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    const-string v1, "current_async_task"

    .line 164
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/RetainManager;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mCurrentAsyncTaskKey:Ljava/lang/String;

    .line 165
    iget-object v1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mCurrentAsyncTaskKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/RetainManager;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mCurrentAsyncTask:Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mCurrentAsyncTask:Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;

    if-nez v0, :cond_3

    .line 171
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v4, "loading_task"

    invoke-virtual {p0}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->getKeyId()J

    move-result-wide v5

    invoke-virtual {p0, v0, v4, v5, v6}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->getFetchInfoTask(Landroid/app/Activity;Ljava/lang/String;J)Lcom/sonyericsson/music/metadata/FetchInfoTask;

    move-result-object v0

    .line 172
    iput-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mCurrentAsyncTask:Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;

    .line 173
    invoke-virtual {v0, p0}, Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;->setListener(Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask$RetainedAsyncTaskListener;)V

    .line 174
    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v5, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v4, v5}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mActivity:Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;->getLocalImageData()Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 179
    sget-object v4, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$1;->$SwitchMap$com$sonyericsson$music$metadata$EditMusicInfoUtils$ImageType:[I

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 185
    :pswitch_0
    iget-object v4, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    invoke-virtual {v4, v0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setArtistArt(Ljava/io/File;)V

    .line 186
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setArtistArtChanged(Z)V

    goto :goto_0

    .line 181
    :pswitch_1
    iget-object v4, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    invoke-virtual {v4, v0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setAlbumArt(Ljava/io/File;)V

    .line 182
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setAlbumArtChanged(Z)V

    .line 189
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mActivity:Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;->setLocalImageData(Landroid/util/Pair;)V

    :cond_2
    const-string v0, "save_task"

    .line 192
    iget-object v4, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mCurrentAsyncTaskKey:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 193
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v4, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mIsFirstStart:Z

    xor-int/2addr v4, v3

    invoke-virtual {p0, v0, v4}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->setValues(Landroid/content/Context;Z)V

    .line 197
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mActivity:Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;->addBackListener(Lcom/sonyericsson/music/metadata/EditMusicInfoActivity$BackListener;)V

    .line 198
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mActivity:Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;->setBackOption(Z)V

    .line 200
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mCurrentAsyncTask:Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;

    if-eqz v0, :cond_6

    .line 201
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/RetainedAsyncTask;->getRetainKey()Ljava/lang/String;

    move-result-object v0

    .line 203
    iget-object v1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mCurrentAsyncTask:Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 204
    iget-object v1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mCurrentAsyncTask:Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;->setListener(Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask$RetainedAsyncTaskListener;)V

    .line 205
    iput-object v2, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mCurrentAsyncTask:Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;

    .line 206
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->isFetchInfoTask(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 207
    invoke-virtual {p0}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->removeLoadingDialog()V

    goto :goto_2

    .line 210
    :cond_4
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->isSaveInfoTask(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 211
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mActivity:Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;

    invoke-virtual {p0, v0, v3, v3}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->toggleSaveDialog(Landroid/content/Context;ZZ)V

    .line 213
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mCurrentAsyncTask:Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;->setListener(Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask$RetainedAsyncTaskListener;)V

    :cond_6
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTaskDone(Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;Ljava/lang/Object;)V
    .locals 3

    .line 595
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 597
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/RetainedAsyncTask;->getRetainKey()Ljava/lang/String;

    move-result-object p1

    .line 599
    iget-object v1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mCurrentAsyncTask:Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;

    if-eqz v1, :cond_1

    .line 600
    invoke-virtual {v1}, Lcom/sonyericsson/music/common/RetainedAsyncTask;->getRetainKey()Ljava/lang/String;

    move-result-object v1

    .line 601
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 602
    iget-object v1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mCurrentAsyncTask:Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/RetainedAsyncTask;->cancelAndRemoveTask()V

    .line 609
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mCurrentAsyncTask:Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;->setListener(Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask$RetainedAsyncTaskListener;)V

    .line 610
    iput-object v2, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mCurrentAsyncTask:Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;

    .line 613
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->isFetchInfoTask(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_4

    if-eqz v0, :cond_4

    .line 615
    check-cast p2, Landroid/util/Pair;

    iget-object p1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Lcom/sonyericsson/music/metadata/EditMusicInfo;

    .line 616
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Landroid/graphics/Bitmap;

    .line 617
    invoke-virtual {p0, v0, p1, p2}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->setValuesAndInitiate(Landroid/content/Context;Lcom/sonyericsson/music/metadata/EditMusicInfo;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 619
    :cond_2
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->isSaveInfoTask(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_4

    .line 621
    check-cast p2, Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-direct {p0, p2}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->handleSaveDone(Lcom/sonyericsson/music/metadata/EditMusicInfo;)V

    goto :goto_0

    .line 623
    :cond_3
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->isGetEmbeddedArtTask(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz v0, :cond_4

    .line 625
    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p2}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->setDefaultArt(Landroid/graphics/Bitmap;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onTaskPreExecute(Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;)V
    .locals 2

    .line 580
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 581
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 585
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/RetainedAsyncTask;->getRetainKey()Ljava/lang/String;

    move-result-object p1

    .line 586
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->isFetchInfoTask(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 587
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->initLoadProgress(Landroid/content/Context;)V

    goto :goto_0

    .line 588
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->isSaveInfoTask(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    const/4 v1, 0x0

    .line 589
    invoke-virtual {p0, v0, p1, v1}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->toggleSaveDialog(Landroid/content/Context;ZZ)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method protected removeLoadingDialog()V
    .locals 3

    .line 549
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mActivity:Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 550
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 551
    invoke-static {v0}, Lcom/sonymobile/music/common/FragmentUtil;->isFragmentTransactionAllowed(Landroidx/fragment/app/FragmentManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "loading"

    .line 552
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 555
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 556
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    :cond_0
    return-void
.end method

.method protected saveChanges()V
    .locals 9

    .line 408
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mCurrentAsyncTask:Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/RetainedAsyncTask;->getRetainKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->isSaveInfoTask(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 412
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->updateAndValidateFields()V

    .line 413
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->hasChanged()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 414
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mActivity:Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->verifyArtRelatedInfoExists(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 417
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mHeaderArtImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 418
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 420
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mCurrentAlbumArtImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 421
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 424
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mCurrentAsyncTask:Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;

    if-eqz v0, :cond_4

    .line 429
    invoke-virtual {v0, v2}, Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;->setListener(Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask$RetainedAsyncTaskListener;)V

    .line 430
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mCurrentAsyncTask:Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/RetainedAsyncTask;->cancelAndRemoveTask()V

    .line 431
    iput-object v2, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mCurrentAsyncTask:Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;

    .line 434
    :cond_4
    iget-object v4, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mActivity:Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;

    const-string v5, "save_task"

    new-instance v6, Lcom/sonyericsson/music/metadata/EditMusicInfo;

    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-direct {v6, v0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;-><init>(Lcom/sonyericsson/music/metadata/EditMusicInfo;)V

    .line 435
    invoke-virtual {p0}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->getKeyId()J

    move-result-wide v7

    move-object v3, p0

    .line 434
    invoke-virtual/range {v3 .. v8}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->getSaveInfoTask(Landroid/app/Activity;Ljava/lang/String;Lcom/sonyericsson/music/metadata/EditMusicInfo;J)Lcom/sonyericsson/music/metadata/SaveInfoTask;

    move-result-object v0

    .line 436
    iput-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mCurrentAsyncTask:Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;

    .line 437
    invoke-virtual {v0, p0}, Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;->setListener(Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask$RetainedAsyncTaskListener;)V

    .line 438
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 440
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 442
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 443
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_6
    :goto_0
    return-void
.end method

.method protected setDefaultAlbumArt()V
    .locals 4

    .line 384
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mCurrentAsyncTask:Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;

    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/RetainedAsyncTask;->getRetainKey()Ljava/lang/String;

    move-result-object v0

    .line 386
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->isGetEmbeddedArtTask(Ljava/lang/String;)Z

    .line 392
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mCurrentAsyncTask:Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;->setListener(Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask$RetainedAsyncTaskListener;)V

    .line 393
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mCurrentAsyncTask:Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/RetainedAsyncTask;->cancelAndRemoveTask()V

    .line 394
    iput-object v1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mCurrentAsyncTask:Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;

    .line 397
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 399
    new-instance v0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$EmbeddedArtLoader;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "default_art_task"

    iget-object v3, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$EmbeddedArtLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/music/metadata/EditMusicInfo;)V

    .line 401
    iput-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mCurrentAsyncTask:Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;

    .line 402
    invoke-virtual {v0, p0}, Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;->setListener(Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask$RetainedAsyncTaskListener;)V

    .line 403
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method setDefaultArt(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 513
    invoke-virtual {p0}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->getAlbumImageView()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 515
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 516
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setHasRemovableAlbumArt(Z)V

    :cond_0
    return-void
.end method

.method protected setValues(Landroid/content/Context;Z)V
    .locals 0

    .line 575
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditIndicator:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected setValuesAndInitiate(Landroid/content/Context;Lcom/sonyericsson/music/metadata/EditMusicInfo;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 542
    iput-object p2, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    const/4 p2, 0x0

    .line 543
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->setValues(Landroid/content/Context;Z)V

    .line 544
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mLoadingRunnable:Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ProgressRunnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 545
    invoke-virtual {p0}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->removeLoadingDialog()V

    return-void
.end method

.method protected setupView(Landroid/content/Context;)V
    .locals 2

    .line 360
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0900c9

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mHeaderArtImageView:Landroid/widget/ImageView;

    .line 362
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0900a0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mArtist:Landroid/widget/EditText;

    .line 363
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f09009e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mAlbum:Landroid/widget/EditText;

    .line 364
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0900a5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mHeaderTextView:Landroid/widget/TextView;

    .line 365
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0900c8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditIndicator:Landroid/view/View;

    .line 367
    invoke-static {p1}, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils;->isCropAvailable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 368
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mHeaderArtImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->getHeaderImageClickListener()Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ImageClickListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method toggleSaveDialog(Landroid/content/Context;ZZ)V
    .locals 2

    if-eqz p2, :cond_1

    .line 659
    iget-object p2, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mSavingRunnable:Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ProgressRunnable;

    if-nez p2, :cond_2

    .line 660
    new-instance p2, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ProgressRunnable;

    const v0, 0x7f100099

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ProgressRunnable;-><init>(Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mSavingRunnable:Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ProgressRunnable;

    if-eqz p3, :cond_0

    .line 662
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mSavingRunnable:Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ProgressRunnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 664
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mSavingRunnable:Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ProgressRunnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 668
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mSavingRunnable:Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ProgressRunnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 669
    iput-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mSavingRunnable:Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ProgressRunnable;

    :cond_2
    :goto_0
    return-void
.end method

.method protected abstract updateAndValidateFields()V
.end method

.method protected abstract verifyArtRelatedInfoExists(Landroid/content/Context;)Z
.end method
