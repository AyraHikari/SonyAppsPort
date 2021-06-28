.class public Lcom/sonyericsson/music/library/GenresCursorLoader;
.super Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;
.source "GenresCursorLoader.java"


# static fields
.field private static final AUGMENTED_GENRES_COLUMNS:[Ljava/lang/String;

.field private static final GENRES_COLUMNS:[Ljava/lang/String;

.field private static final GENRES_URI:Landroid/net/Uri;

.field private static final GENRE_COLUMNS:[Ljava/lang/String;

.field private static final WHERE:Ljava/lang/String; = "is_music <> 0"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 20
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sonyericsson/music/library/GenresCursorLoader;->GENRES_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    .line 24
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "_id"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "name"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sput-object v1, Lcom/sonyericsson/music/library/GenresCursorLoader;->GENRES_COLUMNS:[Ljava/lang/String;

    .line 29
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "_display_name"

    aput-object v2, v1, v3

    sput-object v1, Lcom/sonyericsson/music/library/GenresCursorLoader;->GENRE_COLUMNS:[Ljava/lang/String;

    const/4 v1, 0x3

    .line 33
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v3

    const-string v2, "_count"

    aput-object v2, v1, v4

    const-string v2, "name"

    aput-object v2, v1, v0

    sput-object v1, Lcom/sonyericsson/music/library/GenresCursorLoader;->AUGMENTED_GENRES_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 40
    sget-object v2, Lcom/sonyericsson/music/library/GenresCursorLoader;->GENRES_URI:Landroid/net/Uri;

    sget-object v3, Lcom/sonyericsson/music/library/GenresCursorLoader;->GENRES_COLUMNS:[Ljava/lang/String;

    const-string v6, "name COLLATE NOCASE"

    const-string v8, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onLoadInBackground()Landroid/database/Cursor;
    .locals 13

    const/4 v0, 0x0

    .line 50
    :try_start_0
    invoke-super {p0}, Landroidx/loader/content/AsyncTaskLoader;->onLoadInBackground()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v1, :cond_5

    .line 52
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 54
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v3, Lcom/sonyericsson/music/library/GenresCursorLoader;->AUGMENTED_GENRES_COLUMNS:[Ljava/lang/String;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :cond_0
    :try_start_2
    const-string v3, "_id"

    .line 60
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 59
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-string v5, "external"

    .line 62
    invoke-static {v5, v3, v4}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v7

    .line 63
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v8, Lcom/sonyericsson/music/library/GenresCursorLoader;->GENRE_COLUMNS:[Ljava/lang/String;

    const-string v9, "is_music <> 0"

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 64
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v5, :cond_1

    const/4 v6, 0x0

    goto :goto_0

    .line 65
    :cond_1
    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    :goto_0
    if-lez v6, :cond_2

    .line 68
    invoke-virtual {v2}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v7

    .line 69
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 70
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string v3, "name"

    .line 72
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 71
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    if-eqz v5, :cond_3

    .line 76
    :try_start_4
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 79
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v0, v2

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v2

    move-object v5, v0

    move-object v0, v2

    :goto_1
    if-eqz v5, :cond_4

    .line 76
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 78
    :cond_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_3

    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    .line 83
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    return-object v0

    :catchall_3
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    :goto_3
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 85
    :cond_7
    throw v0

    return-void
.end method

.method protected bridge synthetic onLoadInBackground()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/GenresCursorLoader;->onLoadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
