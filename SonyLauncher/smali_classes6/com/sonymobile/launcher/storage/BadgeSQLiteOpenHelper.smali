.class public Lcom/sonymobile/launcher/storage/BadgeSQLiteOpenHelper;
.super Lcom/android/launcher3/util/NoLocaleSQLiteHelper;
.source "BadgeSQLiteOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/launcher/storage/BadgeSQLiteOpenHelper$BadgeColumns;,
        Lcom/sonymobile/launcher/storage/BadgeSQLiteOpenHelper$BaseApplicationColumns;
    }
.end annotation


# static fields
.field private static final BADGE_TABLE_CREATE:Ljava/lang/String; = "CREATE TABLE badge_table (_id INTEGER PRIMARY KEY UNIQUE, name TEXT, package_name TEXT, badge TEXT, UNIQUE (name, package_name) ON CONFLICT REPLACE);"

.field public static final BADGE_TABLE_NAME:Ljava/lang/String; = "badge_table"

.field private static final DATABASE_NAME:Ljava/lang/String; = "badge_database.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BadgeSQLiteOpenHelper"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 83
    const-string v0, "badge_database.db"

    invoke-direct {p0, v0, p1}, Lcom/sonymobile/launcher/storage/BadgeSQLiteOpenHelper;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p1, "databaseName"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .line 87
    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Lcom/android/launcher3/util/NoLocaleSQLiteHelper;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 88
    return-void
.end method

.method private static setUpAll(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 101
    const-string v0, "CREATE TABLE badge_table (_id INTEGER PRIMARY KEY UNIQUE, name TEXT, package_name TEXT, badge TEXT, UNIQUE (name, package_name) ON CONFLICT REPLACE);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 102
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 92
    invoke-static {p1}, Lcom/sonymobile/launcher/storage/BadgeSQLiteOpenHelper;->setUpAll(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 93
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 97
    return-void
.end method
