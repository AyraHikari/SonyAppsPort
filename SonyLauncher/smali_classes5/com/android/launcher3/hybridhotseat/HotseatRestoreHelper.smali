.class public Lcom/android/launcher3/hybridhotseat/HotseatRestoreHelper;
.super Ljava/lang/Object;
.source "HotseatRestoreHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBackup(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 39
    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/hybridhotseat/HotseatRestoreHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/hybridhotseat/HotseatRestoreHelper$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 55
    return-void
.end method

.method static synthetic lambda$createBackup$0(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .line 40
    nop

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 41
    const-string v1, "new_db_transaction"

    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 44
    const-string v1, "value"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;

    .line 45
    .local v0, "transaction":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    :try_start_0
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v1

    .line 46
    .local v1, "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    new-instance v8, Lcom/android/launcher3/model/GridBackupTable;

    .line 47
    invoke-virtual {v0}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    iget v5, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numDatabaseHotseatIcons:I

    iget v6, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v7, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    move-object v2, v8

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/model/GridBackupTable;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;III)V

    move-object v2, v8

    .line 49
    .local v2, "backupTable":Lcom/android/launcher3/model/GridBackupTable;
    const-string v3, "hotseat_restore_backup"

    invoke-virtual {v2, v3}, Lcom/android/launcher3/model/GridBackupTable;->createCustomBackupTable(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->commit()V

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "restore_hotseat_table"

    invoke-static {v3, v4}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    nop

    .end local v1    # "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    .end local v2    # "backupTable":Lcom/android/launcher3/model/GridBackupTable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V

    .line 54
    .end local v0    # "transaction":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    :cond_0
    return-void

    .line 40
    .restart local v0    # "transaction":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method static synthetic lambda$restoreBackup$1(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .line 62
    const-string v0, "hotseat_restore_backup"

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 63
    const-string v2, "new_db_transaction"

    invoke-static {v1, v2}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 66
    const-string v2, "value"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;

    .line 67
    .local v1, "transaction":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    :try_start_0
    invoke-virtual {v1}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/launcher3/provider/LauncherDbUtils;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 77
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V

    .line 68
    :cond_0
    return-void

    .line 70
    :cond_1
    :try_start_1
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v2

    .line 71
    .local v2, "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    new-instance v9, Lcom/android/launcher3/model/GridBackupTable;

    .line 72
    invoke-virtual {v1}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    iget v6, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numDatabaseHotseatIcons:I

    iget v7, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v8, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    move-object v3, v9

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/launcher3/model/GridBackupTable;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;III)V

    move-object v3, v9

    .line 74
    .local v3, "backupTable":Lcom/android/launcher3/model/GridBackupTable;
    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Lcom/android/launcher3/model/GridBackupTable;->restoreFromCustomBackupTable(Ljava/lang/String;Z)V

    .line 75
    invoke-virtual {v1}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->commit()V

    .line 76
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->forceReload()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    .end local v2    # "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    .end local v3    # "backupTable":Lcom/android/launcher3/model/GridBackupTable;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V

    .line 78
    .end local v1    # "transaction":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    :cond_2
    return-void

    .line 62
    .restart local v1    # "transaction":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    :try_start_2
    invoke-virtual {v1}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v0
.end method

.method public static restoreBackup(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 61
    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/hybridhotseat/HotseatRestoreHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/hybridhotseat/HotseatRestoreHelper$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 79
    return-void
.end method
