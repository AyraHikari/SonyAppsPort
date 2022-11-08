.class public Lcom/android/launcher3/model/GridBackupTable;
.super Ljava/lang/Object;
.source "GridBackupTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/model/GridBackupTable$BackupState;
    }
.end annotation


# static fields
.field private static final ID_PROPERTY:I = -0x1

.field private static final KEY_DB_VERSION:Ljava/lang/String; = "rank"

.field private static final KEY_GRID_X_SIZE:Ljava/lang/String; = "spanX"

.field private static final KEY_GRID_Y_SIZE:Ljava/lang/String; = "spanY"

.field private static final KEY_HOTSEAT_SIZE:Ljava/lang/String; = "screen"

.field public static final OPTION_REQUIRES_SANITIZATION:I = 0x1

.field private static final STATE_NOT_FOUND:I = 0x0

.field private static final STATE_RAW:I = 0x1

.field private static final STATE_SANITIZED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "GridBackupTable"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private final mOldGridX:I

.field private final mOldGridY:I

.field private final mOldHotseatSize:I

.field private mRestoredGridX:I

.field private mRestoredGridY:I

.field private mRestoredHotseatSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;III)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "hotseatSize"    # I
    .param p4, "gridX"    # I
    .param p5, "gridY"    # I

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/android/launcher3/model/GridBackupTable;->mContext:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Lcom/android/launcher3/model/GridBackupTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 80
    iput p3, p0, Lcom/android/launcher3/model/GridBackupTable;->mOldHotseatSize:I

    .line 81
    iput p4, p0, Lcom/android/launcher3/model/GridBackupTable;->mOldGridX:I

    .line 82
    iput p5, p0, Lcom/android/launcher3/model/GridBackupTable;->mOldGridY:I

    .line 83
    return-void
.end method

.method private static copyTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "to"    # Ljava/lang/String;
    .param p3, "userSerial"    # J

    .line 115
    invoke-static {p0, p2}, Lcom/android/launcher3/provider/LauncherDbUtils;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 116
    const/4 v0, 0x0

    invoke-static {p0, p3, p4, v0, p2}, Lcom/android/launcher3/LauncherSettings$Favorites;->addTableToDb(Landroid/database/sqlite/SQLiteDatabase;JZLjava/lang/String;)V

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INSERT INTO "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " SELECT * FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " where _id > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method private encodeDBProperties(I)V
    .locals 4
    .param p1, "options"    # I

    .line 121
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 122
    .local v0, "values":Landroid/content/ContentValues;
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 123
    iget-object v1, p0, Lcom/android/launcher3/model/GridBackupTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "rank"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 124
    iget v1, p0, Lcom/android/launcher3/model/GridBackupTable;->mOldGridX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "spanX"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 125
    iget v1, p0, Lcom/android/launcher3/model/GridBackupTable;->mOldGridY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "spanY"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 126
    iget v1, p0, Lcom/android/launcher3/model/GridBackupTable;->mOldHotseatSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "screen"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 127
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "options"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 128
    iget-object v1, p0, Lcom/android/launcher3/model/GridBackupTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "favorites_bakup"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 129
    return-void
.end method

.method private static validateDBVersion(II)Z
    .locals 4
    .param p0, "expected"    # I
    .param p1, "actual"    # I

    .line 184
    const/4 v0, 0x1

    if-eq p0, p1, :cond_0

    .line 185
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 186
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 185
    const-string v0, "Launcher.db version mismatch, expecting %d but %d was found"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GridBackupTable"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return v3

    .line 189
    :cond_0
    return v0
.end method


# virtual methods
.method public createCustomBackupTable(Ljava/lang/String;)V
    .locals 4
    .param p1, "tableName"    # Ljava/lang/String;

    .line 89
    sget-object v0, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/model/GridBackupTable;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pm/UserCache;

    .line 90
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Lcom/android/launcher3/pm/UserCache;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    .line 91
    .local v0, "profileId":J
    iget-object v2, p0, Lcom/android/launcher3/model/GridBackupTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "favorites"

    invoke-static {v2, v3, p1, v0, v1}, Lcom/android/launcher3/model/GridBackupTable;->copyTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;J)V

    .line 92
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/launcher3/model/GridBackupTable;->encodeDBProperties(I)V

    .line 93
    return-void
.end method

.method public doBackup(JI)V
    .locals 3
    .param p1, "profileId"    # J
    .param p3, "options"    # I

    .line 179
    iget-object v0, p0, Lcom/android/launcher3/model/GridBackupTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "favorites"

    const-string v2, "favorites_bakup"

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/launcher3/model/GridBackupTable;->copyTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;J)V

    .line 180
    invoke-direct {p0, p3}, Lcom/android/launcher3/model/GridBackupTable;->encodeDBProperties(I)V

    .line 181
    return-void
.end method

.method public loadDBProperties()I
    .locals 8

    .line 135
    iget-object v0, p0, Lcom/android/launcher3/model/GridBackupTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "rank"

    const-string v2, "spanX"

    const-string v3, "spanY"

    const-string v4, "screen"

    const-string v5, "options"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    const-string v1, "favorites_bakup"

    const-string v3, "_id=-1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 142
    .local v0, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 143
    const-string v1, "GridBackupTable"

    const-string v3, "Meta data not found in backup table"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    nop

    .line 155
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 144
    :cond_0
    return v2

    .line 146
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/launcher3/model/GridBackupTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/launcher3/model/GridBackupTable;->validateDBVersion(II)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_3

    .line 147
    nop

    .line 155
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 147
    :cond_2
    return v2

    .line 150
    :cond_3
    const/4 v1, 0x1

    :try_start_2
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/model/GridBackupTable;->mRestoredGridX:I

    .line 151
    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/model/GridBackupTable;->mRestoredGridY:I

    .line 152
    const/4 v4, 0x3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/model/GridBackupTable;->mRestoredHotseatSize:I

    .line 153
    const/4 v4, 0x4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    and-int/2addr v4, v1

    if-nez v4, :cond_4

    move v2, v1

    .line 154
    .local v2, "isSanitized":Z
    :cond_4
    if-eqz v2, :cond_5

    move v1, v3

    .line 155
    :cond_5
    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 154
    :cond_6
    return v1

    .line 135
    .end local v2    # "isSanitized":Z
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_7

    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_0
    throw v1
.end method

.method public restoreFromCustomBackupTable(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "dropAfterUse"    # Z

    .line 101
    iget-object v0, p0, Lcom/android/launcher3/model/GridBackupTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, p1}, Lcom/android/launcher3/provider/LauncherDbUtils;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    return-void

    .line 104
    :cond_0
    sget-object v0, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/model/GridBackupTable;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pm/UserCache;

    .line 105
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 104
    invoke-virtual {v0, v1}, Lcom/android/launcher3/pm/UserCache;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    .line 106
    .local v0, "userSerial":J
    iget-object v2, p0, Lcom/android/launcher3/model/GridBackupTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "favorites"

    invoke-static {v2, p1, v3, v0, v1}, Lcom/android/launcher3/model/GridBackupTable;->copyTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;J)V

    .line 107
    if-eqz p2, :cond_1

    .line 108
    iget-object v2, p0, Lcom/android/launcher3/model/GridBackupTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2, p1}, Lcom/android/launcher3/provider/LauncherDbUtils;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 110
    :cond_1
    return-void
.end method

.method public restoreFromRawBackupIfAvailable(J)Z
    .locals 4
    .param p1, "oldProfileId"    # J

    .line 162
    iget-object v0, p0, Lcom/android/launcher3/model/GridBackupTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "favorites_bakup"

    invoke-static {v0, v1}, Lcom/android/launcher3/provider/LauncherDbUtils;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    invoke-virtual {p0}, Lcom/android/launcher3/model/GridBackupTable;->loadDBProperties()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/android/launcher3/model/GridBackupTable;->mOldHotseatSize:I

    iget v3, p0, Lcom/android/launcher3/model/GridBackupTable;->mRestoredHotseatSize:I

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/android/launcher3/model/GridBackupTable;->mOldGridX:I

    iget v3, p0, Lcom/android/launcher3/model/GridBackupTable;->mRestoredGridX:I

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/android/launcher3/model/GridBackupTable;->mOldGridY:I

    iget v3, p0, Lcom/android/launcher3/model/GridBackupTable;->mRestoredGridY:I

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/model/GridBackupTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "favorites"

    invoke-static {v0, v1, v3, p1, p2}, Lcom/android/launcher3/model/GridBackupTable;->copyTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;J)V

    .line 171
    const-string v0, "GridBackupTable"

    const-string v1, "Backup restored"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return v2

    .line 168
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
