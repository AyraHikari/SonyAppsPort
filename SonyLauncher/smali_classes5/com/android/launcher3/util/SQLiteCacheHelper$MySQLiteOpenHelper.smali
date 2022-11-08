.class Lcom/android/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;
.super Lcom/android/launcher3/util/NoLocaleSQLiteHelper;
.source "SQLiteCacheHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/SQLiteCacheHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySQLiteOpenHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/util/SQLiteCacheHelper;


# direct methods
.method static bridge synthetic -$$Nest$mclearDB(Lcom/android/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;->clearDB(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/util/SQLiteCacheHelper;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "version"    # I

    .line 97
    iput-object p1, p0, Lcom/android/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;->this$0:Lcom/android/launcher3/util/SQLiteCacheHelper;

    .line 98
    invoke-direct {p0, p2, p3, p4}, Lcom/android/launcher3/util/NoLocaleSQLiteHelper;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 99
    return-void
.end method

.method private clearDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;->this$0:Lcom/android/launcher3/util/SQLiteCacheHelper;

    invoke-static {v1}, Lcom/android/launcher3/util/SQLiteCacheHelper;->-$$Nest$fgetmTableName(Lcom/android/launcher3/util/SQLiteCacheHelper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 123
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 103
    iget-object v0, p0, Lcom/android/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;->this$0:Lcom/android/launcher3/util/SQLiteCacheHelper;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/SQLiteCacheHelper;->onCreateTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 104
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 115
    if-eq p2, p3, :cond_0

    .line 116
    invoke-direct {p0, p1}, Lcom/android/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;->clearDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 118
    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 108
    if-eq p2, p3, :cond_0

    .line 109
    invoke-direct {p0, p1}, Lcom/android/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;->clearDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 111
    :cond_0
    return-void
.end method
