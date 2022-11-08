.class public Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "HideLauncherIconDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconDatabaseHelper$HideLauncherIconColumns;
    }
.end annotation


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "hidelaunchericon.db"

.field public static final DATABASE_VERSION:I = 0x1

.field private static final SQL_CREATE_ENTRIES:Ljava/lang/String; = "CREATE TABLE hide_launcher_icon (_id INTEGER PRIMARY KEY,package_name TEXT UNIQUE NOT NULL)"

.field private static final SQL_DELETE_ENTRIES:Ljava/lang/String; = "DROP TABLE IF EXISTS hide_launcher_icon"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 26
    const-string v0, "hidelaunchericon.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 27
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 30
    const-string v0, "CREATE TABLE hide_launcher_icon (_id INTEGER PRIMARY KEY,package_name TEXT UNIQUE NOT NULL)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 39
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconDatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 40
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 34
    const-string v0, "DROP TABLE IF EXISTS hide_launcher_icon"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0, p1}, Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 36
    return-void
.end method
