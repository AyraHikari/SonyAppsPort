.class Lcom/sonyericsson/music/picker/PlaylistPickerFragment$SetPickedResult;
.super Landroid/os/AsyncTask;
.source "PlaylistPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/picker/PlaylistPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetPickedResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field private final SHORTCUT_ID_PLAYLIST_PREFIX:Ljava/lang/String;

.field private final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final mInternalId:I

.field private final mPickAction:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;I)V
    .locals 1

    .line 171
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string v0, "music-shortcut-playlist-"

    .line 169
    iput-object v0, p0, Lcom/sonyericsson/music/picker/PlaylistPickerFragment$SetPickedResult;->SHORTCUT_ID_PLAYLIST_PREFIX:Ljava/lang/String;

    .line 172
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonyericsson/music/picker/PlaylistPickerFragment$SetPickedResult;->mActivity:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    .line 173
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/sonyericsson/music/picker/PlaylistPickerFragment$SetPickedResult;->mPickAction:Ljava/lang/String;

    .line 174
    iput p2, p0, Lcom/sonyericsson/music/picker/PlaylistPickerFragment$SetPickedResult;->mInternalId:I

    return-void
.end method

.method private createPickUri(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 7

    .line 206
    invoke-static {}, Lcom/sonymobile/music/common/ThreadingUtils;->throwIfMainDebug()V

    const/4 v0, 0x0

    .line 209
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 210
    invoke-static {p2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri(I)Landroid/net/Uri;

    move-result-object v2

    const/4 p1, 0x1

    new-array v3, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    const-string p2, "mediastore_id"

    aput-object p2, v3, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_1

    .line 212
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "mediastore_id"

    .line 214
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 215
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 216
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 215
    invoke-static {v0, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 218
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 219
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 224
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception p2

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    :catchall_1
    move-exception p2

    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 226
    :cond_3
    throw p2
.end method

.method private createShortcutIntent(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 13

    .line 231
    invoke-static {}, Lcom/sonymobile/music/common/ThreadingUtils;->throwIfMainDebug()V

    .line 234
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    .line 236
    :try_start_0
    invoke-static {p2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri(I)Landroid/net/Uri;

    move-result-object v3

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const-string v2, "name"

    const/4 v10, 0x0

    aput-object v2, v4, v10

    const-string v2, "mediastore_id"

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v7, :cond_6

    .line 238
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "mediastore_id"

    .line 241
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v3, "name"

    .line 242
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 244
    new-instance v12, Landroid/content/Intent;

    const-class v3, Lcom/sonyericsson/music/MusicActivity;

    invoke-direct {v12, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "android.intent.action.VIEW"

    .line 245
    invoke-virtual {v12, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "vnd.android.cursor.dir/playlist"

    .line 246
    invoke-virtual {v12, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "playlist"

    .line 247
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 254
    :try_start_2
    invoke-static {v10}, Lcom/sonyericsson/music/common/DBUtils;->getMyPlaylistProjection(Z)[Ljava/lang/String;

    move-result-object v2

    .line 253
    invoke-static {v8, v2, p2}, Lcom/sonyericsson/music/common/DBUtils;->getMyPlaylistTracksCursor(Landroid/content/ContentResolver;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v9

    const-string v2, "artist"

    const-string v3, "album"

    const-string v4, "album_id"

    .line 257
    invoke-static {v9, v2, v3, v4}, Lcom/sonyericsson/music/common/AlbumArtUtils;->getUnique2by2Images(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 261
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroid/net/Uri;

    .line 263
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    add-int/lit8 v5, v10, 0x1

    .line 264
    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v6, v4}, Lcom/sonyericsson/music/common/AlbumArtUtils;->getAlbumArtUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v3, v10

    move v10, v5

    goto :goto_0

    .line 266
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0700cd

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 267
    invoke-static {p1, v3, v2}, Lcom/sonyericsson/music/common/AlbumArtUtils;->createPlaylistBitmap(Landroid/content/Context;[Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v9, :cond_1

    .line 270
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 274
    :cond_1
    sget-boolean v2, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_Q_API:Z

    if-eqz v2, :cond_2

    .line 275
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "music-shortcut-playlist-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f0801c1

    move-object v1, p1

    move-object v2, v11

    move-object v5, v12

    .line 276
    invoke-static/range {v1 .. v6}, Lcom/sonyericsson/music/picker/PlaylistPickerFragment;->access$000(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v0

    goto :goto_2

    .line 280
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    if-eqz v4, :cond_3

    const-string v0, "android.intent.extra.shortcut.ICON"

    .line 282
    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    :cond_3
    const-string v2, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v3, 0x7f0801c1

    .line 285
    invoke-static {p1, v3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v0

    .line 284
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_1
    move-object v0, v1

    :goto_2
    const-string v1, "android.intent.extra.shortcut.INTENT"

    .line 289
    invoke-virtual {v0, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.shortcut.NAME"

    .line 290
    invoke-virtual {v0, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v7, :cond_4

    .line 296
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz v9, :cond_5

    .line 270
    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 272
    :cond_5
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_6
    if-eqz v7, :cond_7

    .line 296
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7
    return-object v9

    :catchall_2
    move-exception v0

    move-object v7, v9

    :goto_3
    if-eqz v7, :cond_8

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 298
    :cond_8
    throw v0

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/content/Intent;
    .locals 2

    .line 179
    iget-object p1, p0, Lcom/sonyericsson/music/picker/PlaylistPickerFragment$SetPickedResult;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-eqz p1, :cond_1

    .line 180
    iget-object v0, p0, Lcom/sonyericsson/music/picker/PlaylistPickerFragment$SetPickedResult;->mPickAction:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    .line 181
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget v0, p0, Lcom/sonyericsson/music/picker/PlaylistPickerFragment$SetPickedResult;->mInternalId:I

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/picker/PlaylistPickerFragment$SetPickedResult;->createShortcutIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    .line 184
    :cond_0
    iget v0, p0, Lcom/sonyericsson/music/picker/PlaylistPickerFragment$SetPickedResult;->mInternalId:I

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/picker/PlaylistPickerFragment$SetPickedResult;->createPickUri(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 164
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/picker/PlaylistPickerFragment$SetPickedResult;->doInBackground([Ljava/lang/Void;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/content/Intent;)V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/sonyericsson/music/picker/PlaylistPickerFragment$SetPickedResult;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 200
    :goto_0
    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 201
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 164
    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/picker/PlaylistPickerFragment$SetPickedResult;->onPostExecute(Landroid/content/Intent;)V

    return-void
.end method
