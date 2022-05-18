.class public Lcom/sonyericsson/music/picker/MusicPickerActivity;
.super Lcom/sonyericsson/music/ThemedActivity;
.source "MusicPickerActivity.java"

# interfaces
.implements Lcom/sonyericsson/music/AsyncTaskWorker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/picker/MusicPickerActivity$HandlePermissionResultWhenAllowedTask;,
        Lcom/sonyericsson/music/picker/MusicPickerActivity$PickerMode;
    }
.end annotation


# static fields
.field public static final ACTION_QUICK_PLAY_PICK:Ljava/lang/String; = "com.sonyericsson.music.ACTION_QUICKPLAY_PICK"

.field static final APPLICATION_OGG_TYPE:Ljava/lang/String; = "application/ogg"

.field static final APPLICATION_XOGG_TYPE:Ljava/lang/String; = "application/x-ogg"

.field static final AUDIO_ALL_TYPE:Ljava/lang/String; = "audio/.*"

.field static final AUDIO_ANY_TYPE:Ljava/lang/String; = "*/*"

.field static final AUDIO_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/audio"

.field private static final COMPONENT_ALBUM_SHORTCUT_PICKER:Ljava/lang/String; = ".AlbumShortcutActivity"

.field private static final COMPONENT_PLAYLIST_PICKER:Ljava/lang/String; = ".PlaylistPickerActivity"

.field private static final COMPONENT_PLAYLIST_SHORTCUT_PICKER:Ljava/lang/String; = ".PlaylistShortcutActivity"

.field private static final EXTERNAL_STORAGE_PERMISSION_REQUEST:I = 0x1

.field public static final PLAYLIST_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/playlists"

.field static final TRACK_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/track"


# instance fields
.field private mArtDecoderInitialized:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBroadcastReceiverRegistered:Z

.field private mFragmentTransactionAllowedLatch:Ljava/util/concurrent/CountDownLatch;

.field private mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mIntentAction:Ljava/lang/String;

.field private mMimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 65
    invoke-direct {p0}, Lcom/sonyericsson/music/ThemedActivity;-><init>()V

    .line 142
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MusicPickerActivity:Worker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/music/picker/MusicPickerActivity;->mHandlerThread:Landroid/os/HandlerThread;

    .line 146
    new-instance v0, Lcom/sonyericsson/music/picker/MusicPickerActivity$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/picker/MusicPickerActivity$1;-><init>(Lcom/sonyericsson/music/picker/MusicPickerActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/music/picker/MusicPickerActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/picker/MusicPickerActivity;)Ljava/lang/String;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/sonyericsson/music/picker/MusicPickerActivity;->mIntentAction:Ljava/lang/String;

    return-object p0
.end method

.method private intentActionCreateAlbumsShortcut()Z
    .locals 2

    const-string v0, "android.intent.action.CREATE_SHORTCUT"

    .line 348
    iget-object v1, p0, Lcom/sonyericsson/music/picker/MusicPickerActivity;->mIntentAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".AlbumShortcutActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private intentActionCreatePlayListShortcut()Z
    .locals 2

    .line 337
    invoke-direct {p0}, Lcom/sonyericsson/music/picker/MusicPickerActivity;->playListType()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.intent.action.PICK"

    iget-object v1, p0, Lcom/sonyericsson/music/picker/MusicPickerActivity;->mIntentAction:Ljava/lang/String;

    .line 338
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.CREATE_SHORTCUT"

    iget-object v1, p0, Lcom/sonyericsson/music/picker/MusicPickerActivity;->mIntentAction:Ljava/lang/String;

    .line 339
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private intentActionQuickPlayPickPlaylist()Z
    .locals 2

    const-string v0, "com.sonyericsson.music.ACTION_QUICKPLAY_PICK"

    .line 343
    iget-object v1, p0, Lcom/sonyericsson/music/picker/MusicPickerActivity;->mIntentAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "vnd.android.cursor.dir/playlists"

    iget-object v1, p0, Lcom/sonyericsson/music/picker/MusicPickerActivity;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private intentActionShowArtistsList()Z
    .locals 2

    const-string v0, "android.intent.action.PICK"

    .line 323
    iget-object v1, p0, Lcom/sonyericsson/music/picker/MusicPickerActivity;->mIntentAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.GET_CONTENT"

    iget-object v1, p0, Lcom/sonyericsson/music/picker/MusicPickerActivity;->mIntentAction:Ljava/lang/String;

    .line 324
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.CREATE_SHORTCUT"

    iget-object v1, p0, Lcom/sonyericsson/music/picker/MusicPickerActivity;->mIntentAction:Ljava/lang/String;

    .line 325
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/music/picker/MusicPickerActivity;->mimeTypeCorrect()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private mimeTypeCorrect()Z
    .locals 2

    .line 313
    iget-object v0, p0, Lcom/sonyericsson/music/picker/MusicPickerActivity;->mMimeType:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "vnd.android.cursor.dir/track"

    .line 314
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "vnd.android.cursor.dir/audio"

    iget-object v1, p0, Lcom/sonyericsson/music/picker/MusicPickerActivity;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/music/picker/MusicPickerActivity;->mMimeType:Ljava/lang/String;

    const-string v1, "audio/.*"

    .line 315
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "*/*"

    iget-object v1, p0, Lcom/sonyericsson/music/picker/MusicPickerActivity;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/ogg"

    iget-object v1, p0, Lcom/sonyericsson/music/picker/MusicPickerActivity;->mMimeType:Ljava/lang/String;

    .line 316
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/x-ogg"

    iget-object v1, p0, Lcom/sonyericsson/music/picker/MusicPickerActivity;->mMimeType:Ljava/lang/String;

    .line 317
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "android.intent.action.CREATE_SHORTCUT"

    iget-object v1, p0, Lcom/sonyericsson/music/picker/MusicPickerActivity;->mIntentAction:Ljava/lang/String;

    .line 318
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private playListType()Z
    .locals 2

    .line 330
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".PlaylistPickerActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 331
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".PlaylistShortcutActivity"

    .line 332
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private registerForExternalStorageIntents()V
    .locals 2

    .line 385
    iget-boolean v0, p0, Lcom/sonyericsson/music/picker/MusicPickerActivity;->mBroadcastReceiverRegistered:Z

    if-nez v0, :cond_0

    .line 386
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    .line 387
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "file"

    .line 388
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 389
    iget-object v1, p0, Lcom/sonyericsson/music/picker/MusicPickerActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 390
    iput-boolean v0, p0, Lcom/sonyericsson/music/picker/MusicPickerActivity;->mBroadcastReceiverRegistered:Z

    :cond_0
    return-void
.end method


# virtual methods
.method addFragmentTransactionAllowedLatch(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 431
    iput-object p1, p0, Lcom/sonyericsson/music/picker/MusicPickerActivity;->mFragmentTransactionAllowedLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public doAsync(Ljava/lang/Runnable;)V
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/sonyericsson/music/picker/MusicPickerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public doAsyncPrioritized(Ljava/lang/Runnable;)V
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/sonyericsson/music/picker/MusicPickerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public doParallelAsync(Ljava/lang/Runnable;)V
    .locals 1

    .line 419
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getPickerMode()Lcom/sonyericsson/music/picker/MusicPickerActivity$PickerMode;
    .locals 2

    const-string v0, "android.intent.action.CREATE_SHORTCUT"

    .line 423
    iget-object v1, p0, Lcom/sonyericsson/music/picker/MusicPickerActivity;->mIntentAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    sget-object v0, Lcom/sonyericsson/music/picker/MusicPickerActivity$PickerMode;->SHORTCUT:Lcom/sonyericsson/music/picker/MusicPickerActivity$PickerMode;

    return-object v0

    .line 426
    :cond_0
    sget-object v0, Lcom/sonyericsson/music/picker/MusicPickerActivity$PickerMode;->GET_CONTENT:Lcom/sonyericsson/music/picker/MusicPickerActivity$PickerMode;

    return-object v0
.end method

.method handleIntent()V
    .locals 4

    .line 231
    invoke-direct {p0}, Lcom/sonyericsson/music/picker/MusicPickerActivity;->registerForExternalStorageIntents()V

    .line 233
    iget-object v0, p0, Lcom/sonyericsson/music/picker/MusicPickerActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 234
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/music/picker/MusicPickerActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonyericsson/music/picker/MusicPickerActivity;->mHandler:Landroid/os/Handler;

    .line 236
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->init(Landroid/content/Context;Z)V

    const/4 v1, 0x1

    .line 239
    iput-boolean v1, p0, Lcom/sonyericsson/music/picker/MusicPickerActivity;->mArtDecoderInitialized:Z

    .line 241
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/music/common/DBUtils;->isMediaScannerScanning(Landroid/content/ContentResolver;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 242
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f100226

    invoke-static {v0, v3, v1}, Lcom/sonyericsson/music/common/MusicToast;->show(Landroid/content/Context;II)V

    .line 243
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 244
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const-string v3, "mounted"

    .line 246
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 247
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f100218

    invoke-static {v0, v3, v1}, Lcom/sonyericsson/music/common/MusicToast;->show(Landroid/content/Context;II)V

    .line 253
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 254
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 256
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/music/picker/MusicPickerActivity;->intentActionCreatePlayListShortcut()Z

    move-result v0

    const v1, 0x7f090180

    if-eqz v0, :cond_2

    .line 258
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-nez v2, :cond_5

    .line 260
    invoke-static {}, Lcom/sonyericsson/music/picker/PlaylistPickerFragment;->newInstance()Lcom/sonyericsson/music/picker/PlaylistPickerFragment;

    move-result-object v2

    .line 261
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const-string v3, "picker"

    .line 262
    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    const-string v3, "picker"

    .line 263
    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 264
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 266
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/music/picker/MusicPickerActivity;->intentActionQuickPlayPickPlaylist()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 268
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 269
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-nez v2, :cond_5

    .line 270
    invoke-static {}, Lcom/sonyericsson/music/picker/QuickPlayPlaylistPickerFragment;->newInstance()Lcom/sonyericsson/music/picker/QuickPlayPlaylistPickerFragment;

    move-result-object v2

    .line 271
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const-string v3, "picker"

    .line 272
    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    const-string v3, "picker"

    .line 273
    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 274
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 276
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/music/picker/MusicPickerActivity;->intentActionCreateAlbumsShortcut()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 278
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 279
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-nez v2, :cond_5

    .line 280
    invoke-static {}, Lcom/sonyericsson/music/picker/AlbumShortcutFragment;->newInstance()Lcom/sonyericsson/music/picker/AlbumShortcutFragment;

    move-result-object v2

    .line 281
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const-string v3, "picker"

    .line 282
    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    const-string v3, "picker"

    .line 283
    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 284
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 286
    :cond_4
    invoke-direct {p0}, Lcom/sonyericsson/music/picker/MusicPickerActivity;->intentActionShowArtistsList()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 288
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 289
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-nez v2, :cond_5

    .line 290
    invoke-static {}, Lcom/sonyericsson/music/picker/ArtistPickerFragment;->newInstance()Lcom/sonyericsson/music/picker/ArtistPickerFragment;

    move-result-object v2

    .line 291
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const-string v3, "picker"

    .line 292
    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    const-string v3, "picker"

    .line 293
    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 294
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_5
    :goto_0
    return-void

    .line 297
    :cond_6
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 298
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 396
    invoke-static {p0}, Lcom/sonymobile/music/common/FragmentUtil;->isFragmentTransactionAllowed(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 400
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    .line 401
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 402
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 403
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 171
    invoke-super {p0, p1}, Lcom/sonyericsson/music/ThemedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 173
    invoke-static {p0}, Lcom/sonyericsson/music/common/UIUtils;->setDefaultLightSystemUI(Landroid/app/Activity;)V

    const v0, 0x7f0c007e

    .line 175
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 176
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/picker/MusicPickerActivity;->mMimeType:Ljava/lang/String;

    .line 177
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/picker/MusicPickerActivity;->mIntentAction:Ljava/lang/String;

    .line 179
    invoke-static {p0}, Lcom/sonyericsson/music/common/PermissionUtils;->isReadStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 181
    new-array v0, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    invoke-static {p0, v0, p1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 186
    :cond_0
    sget-boolean p1, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz p1, :cond_1

    .line 187
    invoke-static {p0}, Lcom/sonyericsson/music/metadata/MusicInfoService;->startMediaStoreDataSync(Landroid/content/Context;)V

    .line 189
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/music/picker/MusicPickerActivity;->handleIntent()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 364
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 366
    iget-boolean v0, p0, Lcom/sonyericsson/music/picker/MusicPickerActivity;->mBroadcastReceiverRegistered:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/sonyericsson/music/picker/MusicPickerActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 368
    iput-boolean v1, p0, Lcom/sonyericsson/music/picker/MusicPickerActivity;->mBroadcastReceiverRegistered:Z

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/picker/MusicPickerActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/sonyericsson/music/picker/MusicPickerActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 375
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/music/picker/MusicPickerActivity;->mArtDecoderInitialized:Z

    if-eqz v0, :cond_2

    .line 376
    invoke-static {}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->deinit()V

    .line 377
    iput-boolean v1, p0, Lcom/sonyericsson/music/picker/MusicPickerActivity;->mArtDecoderInitialized:Z

    :cond_2
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 195
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 197
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_5

    .line 202
    array-length p1, p3

    const/4 v0, 0x0

    if-lez p1, :cond_3

    aget p1, p3, v0

    if-nez p1, :cond_3

    .line 203
    sget-boolean p1, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz p1, :cond_1

    .line 204
    invoke-static {p0}, Lcom/sonyericsson/music/metadata/MusicInfoService;->startMediaStoreDataSync(Landroid/content/Context;)V

    .line 206
    :cond_1
    invoke-static {p0}, Lcom/sonymobile/music/common/FragmentUtil;->isFragmentTransactionAllowed(Landroidx/fragment/app/FragmentActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 207
    invoke-virtual {p0}, Lcom/sonyericsson/music/picker/MusicPickerActivity;->handleIntent()V

    goto :goto_0

    .line 209
    :cond_2
    new-instance p1, Lcom/sonyericsson/music/picker/MusicPickerActivity$HandlePermissionResultWhenAllowedTask;

    invoke-direct {p1, v0, p0}, Lcom/sonyericsson/music/picker/MusicPickerActivity$HandlePermissionResultWhenAllowedTask;-><init>(ILcom/sonyericsson/music/picker/MusicPickerActivity;)V

    .line 211
    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array p3, v0, [Ljava/lang/Void;

    invoke-virtual {p1, p2, p3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 214
    :cond_3
    invoke-static {p0}, Lcom/sonymobile/music/common/FragmentUtil;->isFragmentTransactionAllowed(Landroidx/fragment/app/FragmentActivity;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 215
    invoke-virtual {p0}, Lcom/sonyericsson/music/picker/MusicPickerActivity;->showHowToEnablePermissionDialog()V

    goto :goto_0

    .line 217
    :cond_4
    new-instance p1, Lcom/sonyericsson/music/picker/MusicPickerActivity$HandlePermissionResultWhenAllowedTask;

    invoke-direct {p1, p2, p0}, Lcom/sonyericsson/music/picker/MusicPickerActivity$HandlePermissionResultWhenAllowedTask;-><init>(ILcom/sonyericsson/music/picker/MusicPickerActivity;)V

    .line 219
    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array p3, v0, [Ljava/lang/Void;

    invoke-virtual {p1, p2, p3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_5
    :goto_0
    return-void
.end method

.method protected onResumeFragments()V
    .locals 1

    .line 354
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResumeFragments()V

    .line 356
    iget-object v0, p0, Lcom/sonyericsson/music/picker/MusicPickerActivity;->mFragmentTransactionAllowedLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 357
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const/4 v0, 0x0

    .line 358
    iput-object v0, p0, Lcom/sonyericsson/music/picker/MusicPickerActivity;->mFragmentTransactionAllowedLatch:Ljava/util/concurrent/CountDownLatch;

    :cond_0
    return-void
.end method

.method protected provideTheme()Lcom/sonyericsson/music/ThemedActivity$Theme;
    .locals 1

    .line 227
    sget-object v0, Lcom/sonyericsson/music/ThemedActivity$Theme;->SETTINGS_NO_ACTIONBAR:Lcom/sonyericsson/music/ThemedActivity$Theme;

    return-object v0
.end method

.method removeFragmentTransactionAllowedLatch(Ljava/util/concurrent/CountDownLatch;)V
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/sonyericsson/music/picker/MusicPickerActivity;->mFragmentTransactionAllowedLatch:Ljava/util/concurrent/CountDownLatch;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 436
    iput-object p1, p0, Lcom/sonyericsson/music/picker/MusicPickerActivity;->mFragmentTransactionAllowedLatch:Ljava/util/concurrent/CountDownLatch;

    :cond_0
    return-void
.end method

.method showHowToEnablePermissionDialog()V
    .locals 6

    .line 304
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x1

    .line 305
    new-array v2, v1, [Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog$PermissionInfo;

    .line 306
    new-instance v3, Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog$PermissionInfo;

    const-string v4, "android.permission-group.STORAGE"

    const v5, 0x7f1001b3

    invoke-direct {v3, v4, v5}, Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog$PermissionInfo;-><init>(Ljava/lang/String;I)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 308
    invoke-static {v2, v1, v1}, Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog;->newInstance([Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog$PermissionInfo;ZZ)Landroidx/fragment/app/DialogFragment;

    move-result-object v1

    const-string v2, "permission_dialog_tag"

    .line 309
    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
