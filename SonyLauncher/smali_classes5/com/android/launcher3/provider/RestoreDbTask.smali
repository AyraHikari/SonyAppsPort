.class public Lcom/android/launcher3/provider/RestoreDbTask;
.super Ljava/lang/Object;
.source "RestoreDbTask.java"


# static fields
.field private static final APPWIDGET_IDS:Ljava/lang/String; = "appwidget_ids"

.field private static final APPWIDGET_OLD_IDS:Ljava/lang/String; = "appwidget_old_ids"

.field private static final INFO_COLUMN_DEFAULT_VALUE:Ljava/lang/String; = "dflt_value"

.field private static final INFO_COLUMN_NAME:Ljava/lang/String; = "name"

.field private static final RESTORED_DEVICE_TYPE:Ljava/lang/String; = "restored_task_pending"

.field private static final TAG:Ljava/lang/String; = "RestoreDbTask"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private backupWorkspace(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 129
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    .line 130
    .local v0, "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    new-instance v7, Lcom/android/launcher3/model/GridBackupTable;

    iget v4, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numDatabaseHotseatIcons:I

    iget v5, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v6, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/model/GridBackupTable;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;III)V

    .line 131
    invoke-virtual {p0, p2}, Lcom/android/launcher3/provider/RestoreDbTask;->getDefaultProfileId(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {v7, v1, v2, v3}, Lcom/android/launcher3/model/GridBackupTable;->doBackup(JI)V

    .line 132
    return-void
.end method

.method private getManagedProfileIds(Landroid/database/sqlite/SQLiteDatabase;J)Landroid/util/LongSparseArray;
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "defaultProfileId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "J)",
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 302
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 303
    .local v0, "ids":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Long;>;"
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 304
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 303
    const-string v2, "SELECT profileId from favorites WHERE profileId != ? GROUP BY profileId"

    invoke-virtual {p1, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 305
    .local v1, "c":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 306
    const-string v2, "profileId"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 308
    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 309
    .end local v1    # "c":Landroid/database/Cursor;
    :cond_1
    return-object v0

    .line 303
    .restart local v1    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v2
.end method

.method private getUserForAncestralSerialNumber(Landroid/app/backup/BackupManager;J)Landroid/os/UserHandle;
    .locals 1
    .param p1, "backupManager"    # Landroid/app/backup/BackupManager;
    .param p2, "ancestralSerialNumber"    # J

    .line 318
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_Q:Z

    if-nez v0, :cond_0

    .line 319
    const/4 v0, 0x0

    return-object v0

    .line 321
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/app/backup/BackupManager;->getUserForAncestralSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public static isPending(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 340
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "restored_task_pending"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static performRestore(Landroid/content/Context;Lcom/android/launcher3/LauncherProvider$DatabaseHelper;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "helper"    # Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    .line 94
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 95
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v1, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;

    invoke-direct {v1, v0}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .local v1, "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    :try_start_1
    new-instance v2, Lcom/android/launcher3/provider/RestoreDbTask;

    invoke-direct {v2}, Lcom/android/launcher3/provider/RestoreDbTask;-><init>()V

    .line 97
    .local v2, "task":Lcom/android/launcher3/provider/RestoreDbTask;
    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/provider/RestoreDbTask;->backupWorkspace(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 98
    new-instance v3, Landroid/app/backup/BackupManager;

    invoke-direct {v3, p0}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, p0, p1, v0, v3}, Lcom/android/launcher3/provider/RestoreDbTask;->sanitizeDB(Landroid/content/Context;Lcom/android/launcher3/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Landroid/app/backup/BackupManager;)I

    .line 99
    invoke-direct {v2, p0}, Lcom/android/launcher3/provider/RestoreDbTask;->restoreAppWidgetIdsIfExists(Landroid/content/Context;)V

    .line 100
    invoke-virtual {v1}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->commit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    const/4 v3, 0x1

    .line 102
    :try_start_2
    invoke-virtual {v1}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 101
    return v3

    .line 95
    .end local v2    # "task":Lcom/android/launcher3/provider/RestoreDbTask;
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "helper":Lcom/android/launcher3/LauncherProvider$DatabaseHelper;
    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 102
    .end local v1    # "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "helper":Lcom/android/launcher3/LauncherProvider$DatabaseHelper;
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "RestoreDbTask"

    const-string v3, "Failed to verify db"

    invoke-static {v2, v3, v1}, Lcom/android/launcher3/logging/FileLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 104
    const/4 v2, 0x0

    return v2
.end method

.method private restoreAppWidgetIdsIfExists(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 354
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 355
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "appwidget_old_ids"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "appwidget_ids"

    if-eqz v2, :cond_0

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 356
    nop

    .line 357
    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher3/util/IntArray;->fromConcatString(Ljava/lang/String;)Lcom/android/launcher3/util/IntArray;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/util/IntArray;->toArray()[I

    move-result-object v4

    .line 358
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/util/IntArray;->fromConcatString(Ljava/lang/String;)Lcom/android/launcher3/util/IntArray;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/util/IntArray;->toArray()[I

    move-result-object v2

    .line 356
    invoke-static {p1, v4, v2}, Lcom/android/launcher3/AppWidgetsRestoredReceiver;->restoreAppWidgetIds(Landroid/content/Context;[I[I)V

    goto :goto_0

    .line 360
    :cond_0
    const-string v2, "RestoreDbTask"

    const-string v4, "No app widget ids to restore."

    invoke-static {v2, v4}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 364
    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 365
    return-void
.end method

.method public static restoreIfNeeded(Landroid/content/Context;Lcom/android/launcher3/LauncherProvider$DatabaseHelper;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "helper"    # Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    .line 75
    invoke-static {p0}, Lcom/android/launcher3/provider/RestoreDbTask;->isPending(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    return-void

    .line 78
    :cond_0
    invoke-static {p0, p1}, Lcom/android/launcher3/provider/RestoreDbTask;->performRestore(Landroid/content/Context;Lcom/android/launcher3/LauncherProvider$DatabaseHelper;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 79
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 84
    :cond_1
    sget-object v0, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/InvariantDeviceProfile;

    .line 88
    .local v0, "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "restored_task_pending"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 90
    invoke-virtual {v0, p0}, Lcom/android/launcher3/InvariantDeviceProfile;->reinitializeAfterRestore(Landroid/content/Context;)V

    .line 91
    return-void
.end method

.method public static restoreIfPossible(Landroid/content/Context;Lcom/android/launcher3/LauncherProvider$DatabaseHelper;Landroid/app/backup/BackupManager;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "helper"    # Lcom/android/launcher3/LauncherProvider$DatabaseHelper;
    .param p2, "backupManager"    # Landroid/app/backup/BackupManager;

    .line 113
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 114
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v1, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;

    invoke-direct {v1, v0}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .local v1, "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    :try_start_1
    new-instance v2, Lcom/android/launcher3/provider/RestoreDbTask;

    invoke-direct {v2}, Lcom/android/launcher3/provider/RestoreDbTask;-><init>()V

    .line 116
    .local v2, "task":Lcom/android/launcher3/provider/RestoreDbTask;
    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/launcher3/provider/RestoreDbTask;->restoreWorkspace(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/android/launcher3/LauncherProvider$DatabaseHelper;Landroid/app/backup/BackupManager;)V

    .line 117
    invoke-virtual {v1}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->commit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    const/4 v3, 0x1

    .line 119
    :try_start_2
    invoke-virtual {v1}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 118
    return v3

    .line 114
    .end local v2    # "task":Lcom/android/launcher3/provider/RestoreDbTask;
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "helper":Lcom/android/launcher3/LauncherProvider$DatabaseHelper;
    .end local p2    # "backupManager":Landroid/app/backup/BackupManager;
    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 119
    .end local v1    # "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "helper":Lcom/android/launcher3/LauncherProvider$DatabaseHelper;
    .restart local p2    # "backupManager":Landroid/app/backup/BackupManager;
    :catch_0
    move-exception v1

    .line 120
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "RestoreDbTask"

    const-string v3, "Failed to restore db"

    invoke-static {v2, v3, v1}, Lcom/android/launcher3/logging/FileLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 121
    const/4 v2, 0x0

    return v2
.end method

.method private restoreWorkspace(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/android/launcher3/LauncherProvider$DatabaseHelper;Landroid/app/backup/BackupManager;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "helper"    # Lcom/android/launcher3/LauncherProvider$DatabaseHelper;
    .param p4, "backupManager"    # Landroid/app/backup/BackupManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 137
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    .line 138
    .local v0, "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    new-instance v7, Lcom/android/launcher3/model/GridBackupTable;

    iget v4, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numDatabaseHotseatIcons:I

    iget v5, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v6, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/model/GridBackupTable;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;III)V

    .line 140
    .local v1, "backupTable":Lcom/android/launcher3/model/GridBackupTable;
    invoke-virtual {p0, p2}, Lcom/android/launcher3/provider/RestoreDbTask;->getDefaultProfileId(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/model/GridBackupTable;->restoreFromRawBackupIfAvailable(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    invoke-direct {p0, p1, p3, p2, p4}, Lcom/android/launcher3/provider/RestoreDbTask;->sanitizeDB(Landroid/content/Context;Lcom/android/launcher3/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Landroid/app/backup/BackupManager;)I

    move-result v2

    .line 142
    .local v2, "itemsDeleted":I
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    .line 143
    invoke-direct {p0, p1}, Lcom/android/launcher3/provider/RestoreDbTask;->restoreAppWidgetIdsIfExists(Landroid/content/Context;)V

    .line 144
    if-nez v2, :cond_0

    .line 146
    const-string v3, "favorites_bakup"

    invoke-static {p2, v3}, Lcom/android/launcher3/provider/LauncherDbUtils;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 149
    .end local v2    # "itemsDeleted":I
    :cond_0
    return-void
.end method

.method private sanitizeDB(Landroid/content/Context;Lcom/android/launcher3/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Landroid/app/backup/BackupManager;)I
    .locals 35
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "helper"    # Lcom/android/launcher3/LauncherProvider$DatabaseHelper;
    .param p3, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p4, "backupManager"    # Landroid/app/backup/BackupManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 165
    move-object/from16 v6, p0

    move-object/from16 v7, p3

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getDefaultUserSerial()J

    move-result-wide v8

    .line 166
    .local v8, "myProfileId":J
    invoke-virtual {v6, v7}, Lcom/android/launcher3/provider/RestoreDbTask;->getDefaultProfileId(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v10

    .line 167
    .local v10, "oldProfileId":J
    invoke-direct {v6, v7, v10, v11}, Lcom/android/launcher3/provider/RestoreDbTask;->getManagedProfileIds(Landroid/database/sqlite/SQLiteDatabase;J)Landroid/util/LongSparseArray;

    move-result-object v12

    .line 168
    .local v12, "oldManagedProfileIds":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Long;>;"
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-virtual {v12}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    const/4 v13, 0x1

    add-int/2addr v1, v13

    invoke-direct {v0, v1}, Landroid/util/LongSparseArray;-><init>(I)V

    move-object v14, v0

    .line 172
    .local v14, "profileMapping":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Long;>;"
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v14, v10, v11, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 173
    invoke-virtual {v12}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    sub-int/2addr v0, v13

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 174
    invoke-virtual {v12, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v1

    .line 175
    .local v1, "oldManagedProfileId":J
    move-object/from16 v15, p4

    invoke-direct {v6, v15, v1, v2}, Lcom/android/launcher3/provider/RestoreDbTask;->getUserForAncestralSerialNumber(Landroid/app/backup/BackupManager;J)Landroid/os/UserHandle;

    move-result-object v3

    .line 176
    .local v3, "user":Landroid/os/UserHandle;
    if-eqz v3, :cond_0

    .line 177
    move-object/from16 v4, p2

    invoke-virtual {v4, v3}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v16

    .line 178
    .local v16, "newManagedProfileId":J
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v14, v1, v2, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_1

    .line 176
    .end local v16    # "newManagedProfileId":J
    :cond_0
    move-object/from16 v4, p2

    .line 173
    .end local v1    # "oldManagedProfileId":J
    .end local v3    # "user":Landroid/os/UserHandle;
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    move-object/from16 v4, p2

    move-object/from16 v15, p4

    .line 183
    .end local v0    # "i":I
    invoke-virtual {v14}, Landroid/util/LongSparseArray;->size()I

    move-result v5

    .line 184
    .local v5, "numProfiles":I
    new-array v2, v5, [Ljava/lang/String;

    .line 185
    .local v2, "profileIds":[Ljava/lang/String;
    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 186
    add-int/lit8 v0, v5, -0x1

    .restart local v0    # "i":I
    :goto_2
    if-lt v0, v13, :cond_2

    .line 187
    invoke-virtual {v14, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    .line 186
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 189
    .end local v0    # "i":I
    :cond_2
    array-length v0, v2

    new-array v1, v0, [Ljava/lang/String;

    .line 190
    .local v1, "args":[Ljava/lang/String;
    const-string v0, "?"

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "profileId NOT IN ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v13, ", "

    invoke-static {v13, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 192
    .local v13, "where":Ljava/lang/String;
    const-string v0, "favorites"

    invoke-virtual {v7, v0, v13, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 193
    .local v3, "itemsDeleted":I
    move-object/from16 v18, v1

    .end local v1    # "args":[Ljava/lang/String;
    .local v18, "args":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v19, v2

    .end local v2    # "profileIds":[Ljava/lang/String;
    .local v19, "profileIds":[Ljava/lang/String;
    const-string v2, " items from unrestored user(s) were deleted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RestoreDbTask"

    invoke-static {v2, v1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v1, "KeepAllIcons"

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isPropertyEnabled(Ljava/lang/String;)Z

    move-result v20

    .line 197
    .local v20, "keepAllIcons":Z
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    move-object v2, v1

    .line 198
    .local v2, "values":Landroid/content/ContentValues;
    nop

    .line 199
    if-eqz v20, :cond_3

    const/16 v21, 0x4

    goto :goto_3

    :cond_3
    const/16 v21, 0x0

    :goto_3
    const/16 v17, 0x1

    or-int/lit8 v21, v21, 0x1

    .line 198
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move/from16 v21, v3

    .end local v3    # "itemsDeleted":I
    .local v21, "itemsDeleted":I
    const-string v3, "restored"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 200
    const/4 v1, 0x0

    invoke-virtual {v7, v0, v2, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 203
    nop

    .line 206
    if-eqz v20, :cond_4

    const/16 v1, 0x8

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    or-int/lit8 v1, v1, 0x7

    .line 203
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 207
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    .line 208
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v16, 0x0

    aput-object v1, v3, v16

    .line 207
    const-string v1, "itemType = ?"

    invoke-virtual {v7, v0, v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 213
    const-wide/high16 v22, -0x8000000000000000L

    .line 214
    .local v22, "tempLocationOffset":J
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-virtual {v14}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseLongArray;-><init>(I)V

    move-object v3, v0

    .line 215
    .local v3, "tempMigratedIds":Landroid/util/SparseLongArray;
    const/4 v0, 0x0

    .line 216
    .local v0, "numTempMigrations":I
    invoke-virtual {v14}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    const/16 v17, 0x1

    add-int/lit8 v1, v1, -0x1

    move/from16 v34, v1

    move v1, v0

    move/from16 v0, v34

    .local v0, "i":I
    .local v1, "numTempMigrations":I
    :goto_5
    const-wide/high16 v24, -0x8000000000000000L

    if-ltz v0, :cond_7

    .line 217
    invoke-virtual {v14, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v26

    .line 218
    .local v26, "oldId":J
    invoke-virtual {v14, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Long;

    move/from16 v29, v5

    .end local v5    # "numProfiles":I
    .local v29, "numProfiles":I
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 220
    .local v4, "newId":J
    cmp-long v28, v26, v4

    if-eqz v28, :cond_6

    .line 221
    invoke-virtual {v14, v4, v5}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v28

    if-ltz v28, :cond_5

    .line 222
    invoke-virtual {v3, v1, v4, v5}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 223
    add-int/lit8 v1, v1, 0x1

    .line 224
    add-long v4, v4, v24

    move/from16 v24, v1

    move-wide/from16 v30, v4

    goto :goto_6

    .line 221
    :cond_5
    move/from16 v24, v1

    move-wide/from16 v30, v4

    .line 226
    .end local v1    # "numTempMigrations":I
    .end local v4    # "newId":J
    .local v24, "numTempMigrations":I
    .local v30, "newId":J
    :goto_6
    move/from16 v28, v0

    .end local v0    # "i":I
    .local v28, "i":I
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object v4, v3

    move/from16 v5, v16

    move-object/from16 v16, v19

    move/from16 v19, v21

    move-object/from16 v21, v2

    .end local v2    # "values":Landroid/content/ContentValues;
    .end local v3    # "tempMigratedIds":Landroid/util/SparseLongArray;
    .local v4, "tempMigratedIds":Landroid/util/SparseLongArray;
    .local v16, "profileIds":[Ljava/lang/String;
    .local v19, "itemsDeleted":I
    .local v21, "values":Landroid/content/ContentValues;
    move-wide/from16 v2, v26

    move-object/from16 v32, v4

    move-object/from16 v33, v12

    move v12, v5

    .end local v4    # "tempMigratedIds":Landroid/util/SparseLongArray;
    .end local v12    # "oldManagedProfileIds":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Long;>;"
    .local v32, "tempMigratedIds":Landroid/util/SparseLongArray;
    .local v33, "oldManagedProfileIds":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Long;>;"
    move-wide/from16 v4, v30

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/provider/RestoreDbTask;->migrateProfileId(Landroid/database/sqlite/SQLiteDatabase;JJ)V

    move/from16 v1, v24

    goto :goto_7

    .line 220
    .end local v16    # "profileIds":[Ljava/lang/String;
    .end local v24    # "numTempMigrations":I
    .end local v28    # "i":I
    .end local v30    # "newId":J
    .end local v32    # "tempMigratedIds":Landroid/util/SparseLongArray;
    .end local v33    # "oldManagedProfileIds":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Long;>;"
    .restart local v0    # "i":I
    .restart local v1    # "numTempMigrations":I
    .restart local v2    # "values":Landroid/content/ContentValues;
    .restart local v3    # "tempMigratedIds":Landroid/util/SparseLongArray;
    .local v4, "newId":J
    .restart local v12    # "oldManagedProfileIds":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Long;>;"
    .local v19, "profileIds":[Ljava/lang/String;
    .local v21, "itemsDeleted":I
    :cond_6
    move/from16 v28, v0

    move-object/from16 v32, v3

    move-object/from16 v33, v12

    move/from16 v12, v16

    move-object/from16 v16, v19

    move/from16 v19, v21

    move-object/from16 v21, v2

    .line 216
    .end local v0    # "i":I
    .end local v2    # "values":Landroid/content/ContentValues;
    .end local v3    # "tempMigratedIds":Landroid/util/SparseLongArray;
    .end local v4    # "newId":J
    .end local v12    # "oldManagedProfileIds":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Long;>;"
    .end local v26    # "oldId":J
    .restart local v16    # "profileIds":[Ljava/lang/String;
    .local v19, "itemsDeleted":I
    .local v21, "values":Landroid/content/ContentValues;
    .restart local v28    # "i":I
    .restart local v32    # "tempMigratedIds":Landroid/util/SparseLongArray;
    .restart local v33    # "oldManagedProfileIds":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Long;>;"
    :goto_7
    add-int/lit8 v0, v28, -0x1

    move-object/from16 v4, p2

    move-object/from16 v2, v21

    move/from16 v5, v29

    move-object/from16 v3, v32

    move/from16 v21, v19

    move-object/from16 v19, v16

    move/from16 v16, v12

    move-object/from16 v12, v33

    .end local v28    # "i":I
    .restart local v0    # "i":I
    goto :goto_5

    .end local v16    # "profileIds":[Ljava/lang/String;
    .end local v29    # "numProfiles":I
    .end local v32    # "tempMigratedIds":Landroid/util/SparseLongArray;
    .end local v33    # "oldManagedProfileIds":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Long;>;"
    .restart local v2    # "values":Landroid/content/ContentValues;
    .restart local v3    # "tempMigratedIds":Landroid/util/SparseLongArray;
    .restart local v5    # "numProfiles":I
    .restart local v12    # "oldManagedProfileIds":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Long;>;"
    .local v19, "profileIds":[Ljava/lang/String;
    .local v21, "itemsDeleted":I
    :cond_7
    move/from16 v28, v0

    move-object/from16 v32, v3

    move/from16 v29, v5

    move-object/from16 v33, v12

    move/from16 v12, v16

    move-object/from16 v16, v19

    move/from16 v19, v21

    move-object/from16 v21, v2

    .line 231
    .end local v0    # "i":I
    .end local v2    # "values":Landroid/content/ContentValues;
    .end local v3    # "tempMigratedIds":Landroid/util/SparseLongArray;
    .end local v5    # "numProfiles":I
    .end local v12    # "oldManagedProfileIds":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Long;>;"
    .restart local v16    # "profileIds":[Ljava/lang/String;
    .local v19, "itemsDeleted":I
    .local v21, "values":Landroid/content/ContentValues;
    .restart local v29    # "numProfiles":I
    .restart local v32    # "tempMigratedIds":Landroid/util/SparseLongArray;
    .restart local v33    # "oldManagedProfileIds":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Long;>;"
    invoke-virtual/range {v32 .. v32}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    move v4, v0

    .local v4, "i":I
    :goto_8
    if-ltz v4, :cond_8

    .line 232
    move-object/from16 v5, v32

    .end local v32    # "tempMigratedIds":Landroid/util/SparseLongArray;
    .local v5, "tempMigratedIds":Landroid/util/SparseLongArray;
    invoke-virtual {v5, v4}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v26

    .line 233
    .local v26, "newId":J
    add-long v2, v26, v24

    move-object/from16 v0, p0

    move/from16 v28, v1

    .end local v1    # "numTempMigrations":I
    .local v28, "numTempMigrations":I
    move-object/from16 v1, p3

    move/from16 v31, v4

    move-object/from16 v30, v5

    .end local v4    # "i":I
    .end local v5    # "tempMigratedIds":Landroid/util/SparseLongArray;
    .local v30, "tempMigratedIds":Landroid/util/SparseLongArray;
    .local v31, "i":I
    move-wide/from16 v4, v26

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/provider/RestoreDbTask;->migrateProfileId(Landroid/database/sqlite/SQLiteDatabase;JJ)V

    .line 231
    .end local v26    # "newId":J
    add-int/lit8 v4, v31, -0x1

    move/from16 v1, v28

    move-object/from16 v32, v30

    .end local v31    # "i":I
    .restart local v4    # "i":I
    goto :goto_8

    .end local v28    # "numTempMigrations":I
    .end local v30    # "tempMigratedIds":Landroid/util/SparseLongArray;
    .restart local v1    # "numTempMigrations":I
    .restart local v32    # "tempMigratedIds":Landroid/util/SparseLongArray;
    :cond_8
    move/from16 v28, v1

    move/from16 v31, v4

    move-object/from16 v30, v32

    .line 236
    .end local v1    # "numTempMigrations":I
    .end local v4    # "i":I
    .end local v32    # "tempMigratedIds":Landroid/util/SparseLongArray;
    .restart local v28    # "numTempMigrations":I
    .restart local v30    # "tempMigratedIds":Landroid/util/SparseLongArray;
    cmp-long v0, v8, v10

    if-eqz v0, :cond_9

    .line 237
    invoke-virtual {v6, v7, v8, v9}, Lcom/android/launcher3/provider/RestoreDbTask;->changeDefaultColumn(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 241
    :cond_9
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "restored_task_pending"

    invoke-interface {v0, v1, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    .line 243
    invoke-virtual {v6, v7}, Lcom/android/launcher3/provider/RestoreDbTask;->removeScreenIdGaps(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 246
    :cond_a
    return v19
.end method

.method public static setPending(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 347
    const-string v0, "RestoreDbTask"

    const-string v1, "Restore data received through full backup "

    invoke-static {v0, v1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/model/DeviceGridState;

    invoke-direct {v1, p0}, Lcom/android/launcher3/model/DeviceGridState;-><init>(Landroid/content/Context;)V

    .line 349
    invoke-virtual {v1}, Lcom/android/launcher3/model/DeviceGridState;->getDeviceType()I

    move-result v1

    const-string v2, "restored_task_pending"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 350
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 351
    return-void
.end method

.method public static setRestoredAppWidgetIds(Landroid/content/Context;[I[I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "oldIds"    # [I
    .param p2, "newIds"    # [I

    .line 369
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 370
    invoke-static {p1}, Lcom/android/launcher3/util/IntArray;->wrap([I)Lcom/android/launcher3/util/IntArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/util/IntArray;->toConcatString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appwidget_old_ids"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 371
    invoke-static {p2}, Lcom/android/launcher3/util/IntArray;->wrap([I)Lcom/android/launcher3/util/IntArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/util/IntArray;->toConcatString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appwidget_ids"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 372
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 373
    return-void
.end method


# virtual methods
.method protected changeDefaultColumn(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "newProfileId"    # J

    .line 292
    const-string v0, "ALTER TABLE favorites RENAME TO favorites_old;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 293
    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Lcom/android/launcher3/LauncherSettings$Favorites;->addTableToDb(Landroid/database/sqlite/SQLiteDatabase;JZ)V

    .line 294
    const-string v0, "INSERT INTO favorites SELECT * FROM favorites_old;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 295
    const-string v0, "favorites_old"

    invoke-static {p1, v0}, Lcom/android/launcher3/provider/LauncherDbUtils;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 296
    return-void
.end method

.method protected getDefaultProfileId(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 328
    const-string v0, "PRAGMA table_info (favorites)"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 329
    .local v0, "c":Landroid/database/Cursor;
    :try_start_0
    const-string v1, "name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 330
    .local v1, "nameIndex":I
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 331
    const-string v2, "profileId"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 332
    const-string v2, "dflt_value"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 332
    :cond_1
    return-wide v2

    .line 335
    :cond_2
    :try_start_1
    new-instance v2, Ljava/io/InvalidObjectException;

    const-string v3, "Table does not have a profile id column"

    invoke-direct {v2, v3}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    .end local v0    # "c":Landroid/database/Cursor;
    .end local p0    # "this":Lcom/android/launcher3/provider/RestoreDbTask;
    .end local p1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 328
    .end local v1    # "nameIndex":I
    .restart local v0    # "c":Landroid/database/Cursor;
    .restart local p0    # "this":Lcom/android/launcher3/provider/RestoreDbTask;
    .restart local p1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v1
.end method

.method protected migrateProfileId(Landroid/database/sqlite/SQLiteDatabase;JJ)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldProfileId"    # J
    .param p4, "newProfileId"    # J

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Changing profile user id from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RestoreDbTask"

    invoke-static {v1, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 282
    .local v0, "values":Landroid/content/ContentValues;
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "profileId"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 283
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 284
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 283
    const-string v2, "favorites"

    const-string v3, "profileId = ?"

    invoke-virtual {p1, v2, v0, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 285
    return-void
.end method

.method protected removeScreenIdGaps(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 255
    const-string v0, "RestoreDbTask"

    const-string v1, "Removing gaps between screenIds"

    invoke-static {v0, v1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const/4 v2, 0x1

    const-string v4, "favorites"

    const-string v5, "screen"

    const-string v6, "container = -100"

    const/4 v7, 0x0

    const-string v8, "screen"

    move-object v3, p1

    invoke-static/range {v2 .. v8}, Lcom/android/launcher3/provider/LauncherDbUtils;->queryIntArray(ZLandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher3/util/IntArray;

    move-result-object v0

    .line 259
    .local v0, "distinctScreens":Lcom/android/launcher3/util/IntArray;
    invoke-virtual {v0}, Lcom/android/launcher3/util/IntArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    return-void

    .line 263
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UPDATE "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "favorites"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 264
    const-string v2, " SET "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "screen"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " =\nCASE\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 265
    .local v1, "sql":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/util/IntArray;->contains(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 266
    .local v3, "screenId":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 267
    const-string v5, "WHEN "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 268
    invoke-virtual {v0, v4}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " THEN "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    .end local v3    # "screenId":I
    .local v6, "screenId":I
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    add-int/lit8 v4, v4, 0x1

    move v3, v6

    goto :goto_0

    .line 270
    .end local v4    # "i":I
    .end local v6    # "screenId":I
    .restart local v3    # "screenId":I
    :cond_1
    const-string v2, "ELSE screen\nEND WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "container"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, -0x64

    .line 271
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 273
    return-void
.end method
