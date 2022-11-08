.class public abstract Lcom/android/launcher3/util/SQLiteCacheHelper;
.super Ljava/lang/Object;
.source "SQLiteCacheHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;
    }
.end annotation


# static fields
.field private static final IN_MEMORY_CACHE:Z = false

.field private static final TAG:Ljava/lang/String; = "SQLiteCacheHelper"


# instance fields
.field private mIgnoreWrites:Z

.field private final mOpenHelper:Lcom/android/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;

.field private final mTableName:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmTableName(Lcom/android/launcher3/util/SQLiteCacheHelper;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/SQLiteCacheHelper;->mTableName:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "version"    # I
    .param p4, "tableName"    # Ljava/lang/String;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p4, p0, Lcom/android/launcher3/util/SQLiteCacheHelper;->mTableName:Ljava/lang/String;

    .line 31
    new-instance v0, Lcom/android/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;-><init>(Lcom/android/launcher3/util/SQLiteCacheHelper;Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/launcher3/util/SQLiteCacheHelper;->mOpenHelper:Lcom/android/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/util/SQLiteCacheHelper;->mIgnoreWrites:Z

    .line 34
    return-void
.end method

.method private onDiskFull(Landroid/database/sqlite/SQLiteFullException;)V
    .locals 2
    .param p1, "e"    # Landroid/database/sqlite/SQLiteFullException;

    .line 70
    const-string v0, "SQLiteCacheHelper"

    const-string v1, "Disk full, all write operations will be ignored"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/util/SQLiteCacheHelper;->mIgnoreWrites:Z

    .line 72
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/android/launcher3/util/SQLiteCacheHelper;->mOpenHelper:Lcom/android/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;->-$$Nest$mclearDB(Lcom/android/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 84
    return-void
.end method

.method public close()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/launcher3/util/SQLiteCacheHelper;->mOpenHelper:Lcom/android/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;->close()V

    .line 88
    return-void
.end method

.method public delete(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "whereClause"    # Ljava/lang/String;
    .param p2, "whereArgs"    # [Ljava/lang/String;

    .line 40
    iget-boolean v0, p0, Lcom/android/launcher3/util/SQLiteCacheHelper;->mIgnoreWrites:Z

    if-eqz v0, :cond_0

    .line 41
    return-void

    .line 44
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/util/SQLiteCacheHelper;->mOpenHelper:Lcom/android/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/util/SQLiteCacheHelper;->mTableName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "SQLiteCacheHelper"

    const-string v2, "Ignoring sqlite exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 45
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v0

    .line 46
    .local v0, "e":Landroid/database/sqlite/SQLiteFullException;
    invoke-direct {p0, v0}, Lcom/android/launcher3/util/SQLiteCacheHelper;->onDiskFull(Landroid/database/sqlite/SQLiteFullException;)V

    .line 49
    .end local v0    # "e":Landroid/database/sqlite/SQLiteFullException;
    :goto_0
    nop

    .line 50
    :goto_1
    return-void
.end method

.method public insertOrReplace(Landroid/content/ContentValues;)V
    .locals 4
    .param p1, "values"    # Landroid/content/ContentValues;

    .line 56
    iget-boolean v0, p0, Lcom/android/launcher3/util/SQLiteCacheHelper;->mIgnoreWrites:Z

    if-eqz v0, :cond_0

    .line 57
    return-void

    .line 60
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/util/SQLiteCacheHelper;->mOpenHelper:Lcom/android/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/util/SQLiteCacheHelper;->mTableName:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "SQLiteCacheHelper"

    const-string v2, "Ignoring sqlite exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 62
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v0

    .line 63
    .local v0, "e":Landroid/database/sqlite/SQLiteFullException;
    invoke-direct {p0, v0}, Lcom/android/launcher3/util/SQLiteCacheHelper;->onDiskFull(Landroid/database/sqlite/SQLiteFullException;)V

    .line 66
    .end local v0    # "e":Landroid/database/sqlite/SQLiteFullException;
    :goto_0
    nop

    .line 67
    :goto_1
    return-void
.end method

.method protected abstract onCreateTable(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method public query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "columns"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lcom/android/launcher3/util/SQLiteCacheHelper;->mOpenHelper:Lcom/android/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/util/SQLiteCacheHelper;->mTableName:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
