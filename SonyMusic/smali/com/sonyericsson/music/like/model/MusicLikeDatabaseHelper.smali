.class public Lcom/sonyericsson/music/like/model/MusicLikeDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MusicLikeDatabaseHelper.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "music_likes.db"

.field private static final DATABASE_VERSION:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "music_likes.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 29
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public static deletMusicLikeDatabase(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "music_likes.db"

    .line 33
    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method
