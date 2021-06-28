.class final Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "RecentlyPlayedDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedDatabaseHelper$RecentlyPlayedDatabaseColumns;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "recently_played.db"

.field private static final DATABASE_VERSION:I = 0x2

.field static final TABLE_RECENTLY_PLAYED:Ljava/lang/String; = "recently_played"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "recently_played.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 26
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 31
    invoke-virtual {p0, p1, v0, v1}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedDatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const/4 p2, 0x0

    .line 39
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedDatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    if-ge p2, v0, :cond_0

    const-string p2, "DROP TABLE IF EXISTS recently_played"

    .line 50
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "CREATE TABLE recently_played (type INTEGER NOT NULL, container_uri TEXT NOT NULL UNIQUE, timestamp INTEGER NOT NULL);"

    .line 51
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 45
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot upgrade database to version "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", DATABASE_VERSION is "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
