.class public Lcom/sonyericsson/music/dialogs/AddToDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "AddToDialog.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/dialogs/AddToDialog$ShowNewLocalPlaylistDialogTask;,
        Lcom/sonyericsson/music/dialogs/AddToDialog$SetSelection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/fragment/app/DialogFragment;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field private static final ARG_FOLDER_CONTENT:Ljava/lang/String; = "folder_content"

.field private static final ARG_PLAYLIST_NAME:Ljava/lang/String; = "playlist_name"

.field private static final ARG_SEND_LOG_EVENT:Ljava/lang/String; = "send_log_event"

.field private static final ARG_URI:Ljava/lang/String; = "uri"

.field private static final KEY_LIST_POSITION:Ljava/lang/String; = "list-pos"

.field private static final LOADER_LOCAL_PLAYLIST_ART:I = 0x1

.field private static final LOADER_PLAYLISTS:I = 0x0

.field private static final MATCH_LOCAL_ALBUM:I = 0x1

.field private static final MATCH_LOCAL_FOLDER:I = 0x2

.field private static final MATCH_LOCAL_GENRE:I = 0x3

.field private static final MATCH_LOCAL_TRACK:I = 0x0

.field private static final REQUEST_CODE_WRITE_ALLOW_TO_ADD:I = 0x14e

.field public static final TAG:Ljava/lang/String; = "addto_dialog"


# instance fields
.field private mAdapter:Landroid/widget/CursorAdapter;

.field private mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

.field private mGrantRequestPlaylistID:J

.field private mIsFolderContent:Z

.field private mListView:Landroid/widget/ListView;

.field private mPlaylistName:Ljava/lang/String;

.field private mRetainedListPos:I

.field private mUri:Landroid/net/Uri;

.field private final mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 67
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 106
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/music/dialogs/AddToDialog;->mUriMatcher:Landroid/content/UriMatcher;

    .line 108
    iput v1, p0, Lcom/sonyericsson/music/dialogs/AddToDialog;->mRetainedListPos:I

    const-wide/16 v0, -0x1

    .line 112
    iput-wide v0, p0, Lcom/sonyericsson/music/dialogs/AddToDialog;->mGrantRequestPlaylistID:J

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/dialogs/AddToDialog;)I
    .locals 0

    .line 67
    iget p0, p0, Lcom/sonyericsson/music/dialogs/AddToDialog;->mRetainedListPos:I

    return p0
.end method

.method static synthetic access$002(Lcom/sonyericsson/music/dialogs/AddToDialog;I)I
    .locals 0

    .line 67
    iput p1, p0, Lcom/sonyericsson/music/dialogs/AddToDialog;->mRetainedListPos:I

    return p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/music/dialogs/AddToDialog;)Landroid/widget/ListView;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/sonyericsson/music/dialogs/AddToDialog;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method private destroyLoader()V
    .locals 2

    .line 394
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/loader/app/LoaderManager;->destroyLoader(I)V

    .line 395
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/loader/app/LoaderManager;->destroyLoader(I)V

    return-void
.end method

.method private handlePlaylistItemSelection(J)V
    .locals 11

    .line 296
    iget-object v0, p0, Lcom/sonyericsson/music/dialogs/AddToDialog;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 297
    iget-object v2, p0, Lcom/sonyericsson/music/dialogs/AddToDialog;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v3, p0, Lcom/sonyericsson/music/dialogs/AddToDialog;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 321
    :pswitch_0
    new-instance v2, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddGenre;

    long-to-int p2, p1

    invoke-direct {v2, p2, v0, v1}, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddGenre;-><init>(IJ)V

    .line 323
    new-instance p1, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;-><init>(Landroid/app/Activity;)V

    new-array p2, v3, [Ljava/lang/Object;

    aput-object v2, p2, v4

    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 324
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    goto :goto_0

    .line 314
    :pswitch_1
    new-instance v2, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddFolder;

    long-to-int p2, p1

    invoke-direct {v2, p2, v0, v1}, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddFolder;-><init>(IJ)V

    .line 316
    new-instance p1, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;-><init>(Landroid/app/Activity;)V

    new-array p2, v3, [Ljava/lang/Object;

    aput-object v2, p2, v4

    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 317
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    goto :goto_0

    .line 307
    :pswitch_2
    new-instance v2, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddAlbum;

    long-to-int p2, p1

    invoke-direct {v2, p2, v0, v1, v4}, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddAlbum;-><init>(IJZ)V

    .line 309
    new-instance p1, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;-><init>(Landroid/app/Activity;)V

    new-array p2, v3, [Ljava/lang/Object;

    aput-object v2, p2, v4

    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 310
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    goto :goto_0

    .line 300
    :pswitch_3
    new-instance v2, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddTracks;

    long-to-int v6, p1

    long-to-int p1, v0

    int-to-long v7, p1

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddTracks;-><init>(IJZZ)V

    .line 302
    new-instance p1, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;-><init>(Landroid/app/Activity;)V

    new-array p2, v3, [Ljava/lang/Object;

    aput-object v2, p2, v4

    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 303
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 328
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 330
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "send_log_event"

    .line 331
    invoke-virtual {p1, p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 332
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "player_add_to_playlist"

    invoke-static {p1, p2}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy;->logEvent(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static newInstance(Landroid/net/Uri;Ljava/lang/String;)Lcom/sonyericsson/music/dialogs/AddToDialog;
    .locals 1

    const/4 v0, 0x0

    .line 140
    invoke-static {p0, p1, v0}, Lcom/sonyericsson/music/dialogs/AddToDialog;->newInstance(Landroid/net/Uri;Ljava/lang/String;Z)Lcom/sonyericsson/music/dialogs/AddToDialog;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(Landroid/net/Uri;Ljava/lang/String;Z)Lcom/sonyericsson/music/dialogs/AddToDialog;
    .locals 1

    const/4 v0, 0x0

    .line 153
    invoke-static {p0, p1, p2, v0}, Lcom/sonyericsson/music/dialogs/AddToDialog;->newInstance(Landroid/net/Uri;Ljava/lang/String;ZZ)Lcom/sonyericsson/music/dialogs/AddToDialog;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(Landroid/net/Uri;Ljava/lang/String;ZZ)Lcom/sonyericsson/music/dialogs/AddToDialog;
    .locals 3

    if-eqz p0, :cond_0

    .line 172
    new-instance v0, Lcom/sonyericsson/music/dialogs/AddToDialog;

    invoke-direct {v0}, Lcom/sonyericsson/music/dialogs/AddToDialog;-><init>()V

    .line 174
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "uri"

    .line 175
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "playlist_name"

    .line 176
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "folder_content"

    .line 177
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "send_log_event"

    .line 178
    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 179
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0

    .line 169
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "uri not allowed to be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private setTracksAndShowCreateNewPlaylistDialog()V
    .locals 5

    .line 400
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicActivity;

    .line 401
    iget-object v1, p0, Lcom/sonyericsson/music/dialogs/AddToDialog;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v2, p0, Lcom/sonyericsson/music/dialogs/AddToDialog;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 402
    new-instance v2, Lcom/sonyericsson/music/dialogs/AddToDialog$ShowNewLocalPlaylistDialogTask;

    iget-object v3, p0, Lcom/sonyericsson/music/dialogs/AddToDialog;->mPlaylistName:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/sonyericsson/music/dialogs/AddToDialog;->mIsFolderContent:Z

    invoke-direct {v2, v0, v3, v4}, Lcom/sonyericsson/music/dialogs/AddToDialog$ShowNewLocalPlaylistDialogTask;-><init>(Landroid/app/Activity;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/util/Pair;

    new-instance v3, Landroid/util/Pair;

    iget-object v4, p0, Lcom/sonyericsson/music/dialogs/AddToDialog;->mUri:Landroid/net/Uri;

    .line 403
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    aput-object v3, v0, v1

    invoke-virtual {v2, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 404
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method


# virtual methods
.method initLoader()V
    .locals 3

    .line 389
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, p0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    .line 390
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1, p0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/16 v0, 0x14e

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 339
    iget-wide v0, p0, Lcom/sonyericsson/music/dialogs/AddToDialog;->mGrantRequestPlaylistID:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 342
    iput-wide v2, p0, Lcom/sonyericsson/music/dialogs/AddToDialog;->mGrantRequestPlaylistID:J

    .line 343
    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/music/dialogs/AddToDialog;->handlePlaylistItemSelection(J)V

    .line 345
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9

    .line 186
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 187
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "layout_inflater"

    .line 190
    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const/4 v3, 0x0

    const v4, 0x7f0c0051

    .line 191
    invoke-virtual {v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v4, 0x7f0900f8

    .line 193
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/sonyericsson/music/dialogs/AddToDialog;->mListView:Landroid/widget/ListView;

    .line 194
    iget-object v4, p0, Lcom/sonyericsson/music/dialogs/AddToDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 197
    iget-object v4, p0, Lcom/sonyericsson/music/dialogs/AddToDialog;->mListView:Landroid/widget/ListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 199
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v6, "uri"

    .line 201
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    iput-object v6, p0, Lcom/sonyericsson/music/dialogs/AddToDialog;->mUri:Landroid/net/Uri;

    const-string v6, "playlist_name"

    .line 202
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sonyericsson/music/dialogs/AddToDialog;->mPlaylistName:Ljava/lang/String;

    const-string v6, "folder_content"

    .line 203
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sonyericsson/music/dialogs/AddToDialog;->mIsFolderContent:Z

    if-eqz p1, :cond_0

    const-string v4, "list-pos"

    const/4 v6, -0x1

    .line 206
    invoke-virtual {p1, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/music/dialogs/AddToDialog;->mRetainedListPos:I

    .line 209
    :cond_0
    instance-of p1, v0, Lcom/sonyericsson/music/MusicActivity;

    if-eqz p1, :cond_2

    .line 210
    sget-boolean p1, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz p1, :cond_1

    const-string p1, "com.sonyericsson.music.musicinfo"

    goto :goto_0

    :cond_1
    const-string p1, "media"

    .line 212
    :goto_0
    iget-object v4, p0, Lcom/sonyericsson/music/dialogs/AddToDialog;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v6, "*/audio/media/#"

    invoke-virtual {v4, p1, v6, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 213
    iget-object v4, p0, Lcom/sonyericsson/music/dialogs/AddToDialog;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v6, "*/audio/albums/#"

    const/4 v7, 0x1

    invoke-virtual {v4, p1, v6, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 214
    iget-object v4, p0, Lcom/sonyericsson/music/dialogs/AddToDialog;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v6, "*/file/#"

    const/4 v8, 0x2

    invoke-virtual {v4, p1, v6, v8}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 217
    iget-object v4, p0, Lcom/sonyericsson/music/dialogs/AddToDialog;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v6, "*/file/*"

    invoke-virtual {v4, p1, v6, v8}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 218
    iget-object v4, p0, Lcom/sonyericsson/music/dialogs/AddToDialog;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v6, "*/audio/genres/#"

    const/4 v8, 0x3

    invoke-virtual {v4, p1, v6, v8}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 220
    iget-object p1, p0, Lcom/sonyericsson/music/dialogs/AddToDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v7}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 222
    invoke-virtual {p0}, Lcom/sonyericsson/music/dialogs/AddToDialog;->initLoader()V

    const p1, 0x7f0c0053

    .line 229
    invoke-static {v0, p1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 231
    iget-object v3, p0, Lcom/sonyericsson/music/dialogs/AddToDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, p1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 233
    new-instance p1, Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    invoke-direct {p1, v0}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sonyericsson/music/dialogs/AddToDialog;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    .line 234
    new-instance p1, Lcom/sonyericsson/music/library/PlaylistsAdapter;

    iget-object v3, p0, Lcom/sonyericsson/music/dialogs/AddToDialog;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    invoke-direct {p1, v0, v3, v5}, Lcom/sonyericsson/music/library/PlaylistsAdapter;-><init>(Landroid/app/Activity;Lcom/sonyericsson/music/artdecoder/ArtDecoder;Z)V

    iput-object p1, p0, Lcom/sonyericsson/music/dialogs/AddToDialog;->mAdapter:Landroid/widget/CursorAdapter;

    .line 235
    iget-object p1, p0, Lcom/sonyericsson/music/dialogs/AddToDialog;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/sonyericsson/music/dialogs/AddToDialog;->mAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 237
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p1, 0x7f10011f

    .line 238
    invoke-virtual {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 240
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1

    .line 224
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AddToDialog not allowed to be created by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 7
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

    if-nez p1, :cond_0

    .line 351
    new-instance p1, Lcom/sonyericsson/music/common/PlaylistsLoader;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    sget-object v0, Lcom/sonyericsson/music/common/PlaylistsLoader$Mode;->LOCAL_EDITABLE:Lcom/sonyericsson/music/common/PlaylistsLoader$Mode;

    sget-object v1, Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;->RECENT:Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;

    const/4 v2, 0x0

    invoke-direct {p1, p2, v0, v1, v2}, Lcom/sonyericsson/music/common/PlaylistsLoader;-><init>(Landroid/content/Context;Lcom/sonyericsson/music/common/PlaylistsLoader$Mode;Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;Z)V

    return-object p1

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 354
    new-instance p1, Landroidx/loader/content/CursorLoader;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 355
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    .line 356
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    .line 355
    invoke-static {p2}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$LocalPlaylistArtUri;->getUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Landroidx/loader/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/sonyericsson/music/dialogs/AddToDialog;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v0}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->destroy()V

    const/4 v0, 0x0

    .line 247
    iput-object v0, p0, Lcom/sonyericsson/music/dialogs/AddToDialog;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    .line 250
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/music/dialogs/AddToDialog;->destroyLoader()V

    .line 251
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
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

    check-cast p1, Lcom/sonyericsson/music/MusicActivity;

    if-eqz p1, :cond_5

    .line 265
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p1}, Lcom/sonyericsson/music/MusicActivity;->isFragmentTransactionAllowed()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    if-nez p3, :cond_1

    .line 270
    invoke-direct {p0}, Lcom/sonyericsson/music/dialogs/AddToDialog;->setTracksAndShowCreateNewPlaylistDialog()V

    .line 272
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string p2, "send_log_event"

    const/4 p3, 0x0

    .line 273
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 274
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "player_add_to_playlist"

    invoke-static {p1, p2}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy;->logEvent(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_1

    .line 277
    :cond_1
    iget-object p2, p0, Lcom/sonyericsson/music/dialogs/AddToDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p2

    invoke-interface {p2, p3}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result p2

    const/4 p3, -0x2

    if-eq p2, p3, :cond_4

    .line 279
    sget-boolean p2, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz p2, :cond_3

    const/16 p2, 0x14e

    .line 280
    invoke-static {p0, p2, p4, p5}, Lcom/sonyericsson/music/common/PlaylistActions;->requestWritePermission(Landroidx/fragment/app/Fragment;IJ)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 282
    iput-wide p4, p0, Lcom/sonyericsson/music/dialogs/AddToDialog;->mGrantRequestPlaylistID:J

    goto :goto_0

    .line 284
    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f1000e9

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Lcom/sonyericsson/music/common/MusicToast;->show(Landroid/content/Context;II)V

    :goto_0
    return-void

    .line 289
    :cond_3
    invoke-direct {p0, p4, p5}, Lcom/sonyericsson/music/dialogs/AddToDialog;->handlePlaylistItemSelection(J)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    :goto_2
    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V
    .locals 1
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

    .line 365
    invoke-virtual {p1}, Landroidx/loader/content/Loader;->getId()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 366
    iget-object p1, p0, Lcom/sonyericsson/music/dialogs/AddToDialog;->mAdapter:Landroid/widget/CursorAdapter;

    check-cast p1, Lcom/sonyericsson/music/library/PlaylistsAdapter;

    const/4 v0, 0x0

    .line 367
    invoke-virtual {p1, p2, v0}, Lcom/sonyericsson/music/library/PlaylistsAdapter;->loadPlaylistArtUriToAdapter(Landroid/database/Cursor;Z)V

    goto :goto_0

    .line 368
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/dialogs/AddToDialog;->mAdapter:Landroid/widget/CursorAdapter;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 369
    new-instance p1, Lcom/sonyericsson/music/library/PlaylistsCursorWrapper;

    invoke-direct {p1, p2}, Lcom/sonyericsson/music/library/PlaylistsCursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 370
    iget-object p2, p0, Lcom/sonyericsson/music/dialogs/AddToDialog;->mAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {p2, p1}, Landroid/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 371
    iget-object p1, p0, Lcom/sonyericsson/music/dialogs/AddToDialog;->mAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {p1}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 373
    iget p1, p0, Lcom/sonyericsson/music/dialogs/AddToDialog;->mRetainedListPos:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    .line 375
    iget-object p1, p0, Lcom/sonyericsson/music/dialogs/AddToDialog;->mListView:Landroid/widget/ListView;

    new-instance p2, Lcom/sonyericsson/music/dialogs/AddToDialog$SetSelection;

    invoke-direct {p2, p0}, Lcom/sonyericsson/music/dialogs/AddToDialog$SetSelection;-><init>(Lcom/sonyericsson/music/dialogs/AddToDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 67
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/music/dialogs/AddToDialog;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .line 383
    iget-object p1, p0, Lcom/sonyericsson/music/dialogs/AddToDialog;->mAdapter:Landroid/widget/CursorAdapter;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 384
    invoke-virtual {p1, v0}, Landroid/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 256
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 257
    iget-object v0, p0, Lcom/sonyericsson/music/dialogs/AddToDialog;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    const-string v1, "list-pos"

    .line 258
    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
