.class public Lcom/android/launcher3/LauncherProvider$DatabaseHelper;
.super Lcom/android/launcher3/util/NoLocaleSQLiteHelper;
.source "LauncherProvider.java"

# interfaces
.implements Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/LauncherProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DatabaseHelper"
.end annotation


# instance fields
.field private mBackupTableExists:Z

.field private final mContext:Landroid/content/Context;

.field private final mForMigration:Z

.field private mHotseatRestoreTableExists:Z

.field private mMaxItemId:I


# direct methods
.method static bridge synthetic -$$Nest$fputmBackupTableExists(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mBackupTableExists:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmHotseatRestoreTableExists(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mHotseatRestoreTableExists:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetNewScreenId(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getNewScreenId()I

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dbName"    # Ljava/lang/String;
    .param p3, "forMigration"    # Z

    .line 682
    const/16 v0, 0x1e

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/util/NoLocaleSQLiteHelper;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 649
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxItemId:I

    .line 683
    iput-object p1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 684
    iput-boolean p3, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mForMigration:Z

    .line 685
    return-void
.end method

.method private addFavoritesTable(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "optional"    # Z

    .line 752
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getDefaultUserSerial()J

    move-result-wide v0

    invoke-static {p1, v0, v1, p2}, Lcom/android/launcher3/LauncherSettings$Favorites;->addTableToDb(Landroid/database/sqlite/SQLiteDatabase;JZ)V

    .line 753
    return-void
.end method

.method private addIntegerColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Z
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "columnName"    # Ljava/lang/String;
    .param p3, "defaultValue"    # J

    .line 1023
    :try_start_0
    new-instance v0, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;

    invoke-direct {v0, p1}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1024
    .local v0, "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ALTER TABLE favorites ADD COLUMN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER NOT NULL DEFAULT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1026
    invoke-virtual {v0}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->commit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1027
    :try_start_2
    invoke-virtual {v0}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1030
    .end local v0    # "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    nop

    .line 1031
    const/4 v0, 0x1

    return v0

    .line 1023
    .restart local v0    # "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/launcher3/LauncherProvider$DatabaseHelper;
    .end local p1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p2    # "columnName":Ljava/lang/String;
    .end local p3    # "defaultValue":J
    :goto_0
    throw v1
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1027
    .end local v0    # "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    .restart local p0    # "this":Lcom/android/launcher3/LauncherProvider$DatabaseHelper;
    .restart local p1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p2    # "columnName":Ljava/lang/String;
    .restart local p3    # "defaultValue":J
    :catch_0
    move-exception v0

    .line 1028
    .local v0, "ex":Landroid/database/SQLException;
    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LauncherProvider"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1029
    const/4 v1, 0x0

    return v1
.end method

.method static createDatabaseHelper(Landroid/content/Context;Ljava/lang/String;Z)Lcom/android/launcher3/LauncherProvider$DatabaseHelper;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "forMigration"    # Z

    .line 659
    if-nez p1, :cond_0

    .line 660
    sget-object v0, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object p1, v0, Lcom/android/launcher3/InvariantDeviceProfile;->dbFile:Ljava/lang/String;

    .line 662
    :cond_0
    new-instance v0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 666
    .local v0, "databaseHelper":Lcom/android/launcher3/LauncherProvider$DatabaseHelper;
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "favorites"

    invoke-static {v1, v2}, Lcom/android/launcher3/provider/LauncherDbUtils;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 667
    const-string v1, "LauncherProvider"

    const-string v2, "Tables are missing after onCreate has been called. Trying to recreate"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->addFavoritesTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 671
    :cond_1
    nop

    .line 672
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 671
    const-string v2, "hotseat_restore_backup"

    invoke-static {v1, v2}, Lcom/android/launcher3/provider/LauncherDbUtils;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mHotseatRestoreTableExists:Z

    .line 674
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->initIds()V

    .line 675
    return-object v0
.end method

.method static createDatabaseHelper(Landroid/content/Context;Z)Lcom/android/launcher3/LauncherProvider$DatabaseHelper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "forMigration"    # Z

    .line 654
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->createDatabaseHelper(Landroid/content/Context;Ljava/lang/String;Z)Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    move-result-object v0

    return-object v0
.end method

.method private getNewScreenId()I
    .locals 5

    .line 1069
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "screen"

    aput-object v3, v1, v2

    const-string v2, "favorites"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v4, "container"

    aput-object v4, v1, v2

    .line 1072
    const/16 v2, -0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    .line 1069
    const-string v2, "SELECT MAX(%1$s) FROM %2$s WHERE %3$s = %4$d AND %1$s >= 0"

    invoke-static {v0, v2, v1}, Lcom/android/launcher3/LauncherProvider;->getMaxId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v3

    return v0
.end method

.method private initializeMaxItemId(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 1063
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "favorites"

    aput-object v2, v0, v1

    const-string v1, "SELECT MAX(%1$s) FROM %2$s"

    invoke-static {p1, v1, v0}, Lcom/android/launcher3/LauncherProvider;->getMaxId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public checkId(Landroid/content/ContentValues;)V
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;

    .line 1058
    const-string v0, "_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1059
    .local v0, "id":I
    iget v1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxItemId:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxItemId:I

    .line 1060
    return-void
.end method

.method convertShortcutsToLauncherActivities(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 956
    const-string v0, "intent"

    const-string v1, "_id"

    const-string v2, "LauncherProvider"

    :try_start_0
    new-instance v3, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;

    invoke-direct {v3, p1}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 958
    .local v3, "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    :try_start_1
    const-string v5, "favorites"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "itemType=1 AND profileId="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 961
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getDefaultUserSerial()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 958
    move-object v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 963
    .local v4, "c":Landroid/database/Cursor;
    :try_start_2
    const-string v5, "UPDATE favorites SET itemType=0 WHERE _id=?"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 966
    .local v5, "updateStmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_3
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 967
    .local v1, "idIndex":I
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 969
    .local v0, "intentIndex":I
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 970
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 973
    .local v6, "intentDescription":Ljava/lang/String;
    const/4 v7, 0x0

    :try_start_4
    invoke-static {v6, v7}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7
    :try_end_4
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 977
    .local v7, "intent":Landroid/content/Intent;
    nop

    .line 979
    :try_start_5
    invoke-static {v7}, Lcom/android/launcher3/util/PackageManagerHelper;->isLauncherAppTarget(Landroid/content/Intent;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 980
    goto :goto_0

    .line 983
    :cond_0
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 984
    .local v8, "id":I
    const/4 v9, 0x1

    int-to-long v10, v8

    invoke-virtual {v5, v9, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 985
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    .line 986
    nop

    .end local v6    # "intentDescription":Ljava/lang/String;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "id":I
    goto :goto_0

    .line 974
    .restart local v6    # "intentDescription":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 975
    .local v7, "e":Ljava/net/URISyntaxException;
    const-string v8, "Unable to parse intent"

    invoke-static {v2, v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 976
    goto :goto_0

    .line 987
    .end local v6    # "intentDescription":Ljava/lang/String;
    .end local v7    # "e":Ljava/net/URISyntaxException;
    :cond_1
    invoke-virtual {v3}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->commit()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 988
    .end local v0    # "intentIndex":I
    .end local v1    # "idIndex":I
    if-eqz v5, :cond_2

    :try_start_6
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v5    # "updateStmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_2
    if-eqz v4, :cond_3

    :try_start_7
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .end local v4    # "c":Landroid/database/Cursor;
    :cond_3
    :try_start_8
    invoke-virtual {v3}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_8
    .catch Landroid/database/SQLException; {:try_start_8 .. :try_end_8} :catch_1

    .line 990
    .end local v3    # "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    goto :goto_4

    .line 956
    .restart local v3    # "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    .restart local v4    # "c":Landroid/database/Cursor;
    .restart local v5    # "updateStmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_0
    move-exception v0

    if-eqz v5, :cond_4

    :try_start_9
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_a
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    .end local v4    # "c":Landroid/database/Cursor;
    .end local p0    # "this":Lcom/android/launcher3/LauncherProvider$DatabaseHelper;
    .end local p1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_4
    :goto_1
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .end local v5    # "updateStmt":Landroid/database/sqlite/SQLiteStatement;
    .restart local v3    # "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    .restart local v4    # "c":Landroid/database/Cursor;
    .restart local p0    # "this":Lcom/android/launcher3/LauncherProvider$DatabaseHelper;
    .restart local p1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_2
    move-exception v0

    if-eqz v4, :cond_5

    :try_start_b
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v1

    :try_start_c
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    .end local p0    # "this":Lcom/android/launcher3/LauncherProvider$DatabaseHelper;
    .end local p1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_5
    :goto_2
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .end local v4    # "c":Landroid/database/Cursor;
    .restart local v3    # "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    .restart local p0    # "this":Lcom/android/launcher3/LauncherProvider$DatabaseHelper;
    .restart local p1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_4
    move-exception v0

    :try_start_d
    invoke-virtual {v3}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception v1

    :try_start_e
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/launcher3/LauncherProvider$DatabaseHelper;
    .end local p1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_3
    throw v0
    :try_end_e
    .catch Landroid/database/SQLException; {:try_start_e .. :try_end_e} :catch_1

    .line 988
    .end local v3    # "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    .restart local p0    # "this":Lcom/android/launcher3/LauncherProvider$DatabaseHelper;
    .restart local p1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_1
    move-exception v0

    .line 989
    .local v0, "ex":Landroid/database/SQLException;
    const-string v1, "Error deduping shortcuts"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 991
    .end local v0    # "ex":Landroid/database/SQLException;
    :goto_4
    return-void
.end method

.method public createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 912
    new-instance v0, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;

    invoke-direct {v0, p1}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 913
    .local v0, "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    :try_start_0
    const-string v1, "favorites"

    invoke-static {p1, v1}, Lcom/android/launcher3/provider/LauncherDbUtils;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 914
    const-string v1, "workspaceScreens"

    invoke-static {p1, v1}, Lcom/android/launcher3/provider/LauncherDbUtils;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 915
    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 916
    invoke-virtual {v0}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->commit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 917
    invoke-virtual {v0}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V

    .line 918
    .end local v0    # "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    return-void

    .line 912
    .restart local v0    # "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public generateNewItemId()I
    .locals 2

    .line 1041
    iget v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxItemId:I

    if-ltz v0, :cond_0

    .line 1044
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxItemId:I

    .line 1045
    return v0

    .line 1042
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error: max item id was not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDefaultUserSerial()J
    .locals 2

    .line 748
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    return-wide v0
.end method

.method getKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 728
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "launcher.db"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 729
    return-object p1

    .line 731
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSerialNumberForUser(Landroid/os/UserHandle;)J
    .locals 2
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 744
    sget-object v0, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/pm/UserCache;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected handleOneTimeDataUpgrade(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 775
    sget-object v0, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pm/UserCache;

    .line 776
    .local v0, "um":Lcom/android/launcher3/pm/UserCache;
    invoke-virtual {v0}, Lcom/android/launcher3/pm/UserCache;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 777
    .local v2, "user":Landroid/os/UserHandle;
    invoke-virtual {v0, v2}, Lcom/android/launcher3/pm/UserCache;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v3

    .line 778
    .local v3, "serial":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update favorites set intent = replace(intent, \';l.profile="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";\', \';\') where itemType = 0;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 780
    .local v5, "sql":Ljava/lang/String;
    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 781
    .end local v2    # "user":Landroid/os/UserHandle;
    .end local v3    # "serial":J
    .end local v5    # "sql":Ljava/lang/String;
    goto :goto_0

    .line 782
    :cond_0
    return-void
.end method

.method protected initIds()V
    .locals 2

    .line 690
    iget v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxItemId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 691
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->initializeMaxItemId(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxItemId:I

    .line 693
    :cond_0
    return-void
.end method

.method public insertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)I
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 1054
    const-string v0, "favorites"

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lcom/android/launcher3/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/launcher3/AutoInstallsLayout;)I
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "loader"    # Lcom/android/launcher3/AutoInstallsLayout;

    .line 1077
    new-instance v0, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntArray;-><init>()V

    invoke-virtual {p2, p1, v0}, Lcom/android/launcher3/AutoInstallsLayout;->loadLayout(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/launcher3/util/IntArray;)I

    move-result v0

    .line 1080
    .local v0, "count":I
    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->initializeMaxItemId(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxItemId:I

    .line 1081
    return v0
.end method

.method public newLauncherWidgetHost()Landroid/appwidget/AppWidgetHost;
    .locals 2

    .line 1049
    new-instance v0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onAddOrDeleteOp(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 711
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mBackupTableExists:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 712
    const-string v0, "favorites_bakup"

    invoke-static {p1, v0}, Lcom/android/launcher3/provider/LauncherDbUtils;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 713
    iput-boolean v1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mBackupTableExists:Z

    .line 715
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mHotseatRestoreTableExists:Z

    if-eqz v0, :cond_1

    .line 716
    const-string v0, "hotseat_restore_backup"

    invoke-static {p1, v0}, Lcom/android/launcher3/provider/LauncherDbUtils;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 717
    iput-boolean v1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mHotseatRestoreTableExists:Z

    .line 719
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 699
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxItemId:I

    .line 701
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->addFavoritesTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 704
    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->initializeMaxItemId(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxItemId:I

    .line 705
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mForMigration:Z

    if-nez v0, :cond_0

    .line 706
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->onEmptyDbCreated()V

    .line 708
    :cond_0
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 899
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v1, "downgrade_schema.json"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/model/DbDowngradeHelper;->parse(Ljava/io/File;)Lcom/android/launcher3/model/DbDowngradeHelper;

    move-result-object v0

    .line 900
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher3/model/DbDowngradeHelper;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 905
    goto :goto_0

    .line 901
    :catch_0
    move-exception v0

    .line 902
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to downgrade from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Wiping databse."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LauncherProvider"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 904
    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 906
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method protected onEmptyDbCreated()V
    .locals 3

    .line 739
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "EMPTY_DATABASE_CREATED"

    invoke-virtual {p0, v1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 740
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 741
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 757
    invoke-super {p0, p1}, Lcom/android/launcher3/util/NoLocaleSQLiteHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 759
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v1, "downgrade_schema.json"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 760
    .local v0, "schemaFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 761
    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->handleOneTimeDataUpgrade(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 763
    :cond_0
    const/16 v1, 0x1e

    iget-object v2, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/model/DbDowngradeHelper;->updateSchemaFile(Ljava/io/File;ILandroid/content/Context;)V

    .line 764
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 15
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 787
    move-object v1, p0

    move-object/from16 v9, p1

    const-string v0, "favorites"

    const-string v10, "LauncherProvider"

    const/4 v11, 0x2

    const-string v12, "screen"

    const-wide/16 v2, 0x0

    const/4 v13, 0x1

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_2

    .line 793
    :pswitch_0
    :try_start_0
    new-instance v4, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;

    invoke-direct {v4, v9}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 795
    .local v4, "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    :try_start_1
    const-string v5, "ALTER TABLE favorites ADD COLUMN appWidgetProvider TEXT;"

    invoke-virtual {v9, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 797
    invoke-virtual {v4}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->commit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 798
    :try_start_2
    invoke-virtual {v4}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 802
    .end local v4    # "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    nop

    .line 805
    :pswitch_1
    const-string v4, "modified"

    invoke-direct {p0, v9, v4, v2, v3}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->addIntegerColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Z

    move-result v4

    if-nez v4, :cond_0

    .line 807
    goto/16 :goto_2

    .line 811
    :cond_0
    :pswitch_2
    const-string v4, "restored"

    invoke-direct {p0, v9, v4, v2, v3}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->addIntegerColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Z

    move-result v4

    if-nez v4, :cond_1

    .line 813
    goto/16 :goto_2

    .line 824
    :cond_1
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getDefaultUserSerial()J

    move-result-wide v4

    const-string v6, "profileId"

    invoke-direct {p0, v9, v6, v4, v5}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->addIntegerColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Z

    move-result v4

    if-nez v4, :cond_2

    .line 826
    goto/16 :goto_2

    .line 830
    :cond_2
    :pswitch_4
    invoke-virtual {p0, v9, v13}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->updateFolderItemsRank(Landroid/database/sqlite/SQLiteDatabase;Z)Z

    move-result v4

    if-nez v4, :cond_3

    .line 831
    goto/16 :goto_2

    .line 836
    :cond_3
    :pswitch_5
    const-string v4, "options"

    invoke-direct {p0, v9, v4, v2, v3}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->addIntegerColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Z

    move-result v2

    if-nez v2, :cond_4

    .line 838
    goto/16 :goto_2

    .line 846
    :cond_4
    :pswitch_6
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->convertShortcutsToLauncherActivities(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 852
    :pswitch_7
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v4, "workspaceScreens"

    const-string v5, "_id"

    const-string v8, "screenRank"

    move-object/from16 v3, p1

    invoke-static/range {v2 .. v8}, Lcom/android/launcher3/provider/LauncherDbUtils;->queryIntArray(ZLandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher3/util/IntArray;

    move-result-object v2

    .line 854
    .local v2, "finalScreens":Lcom/android/launcher3/util/IntArray;
    invoke-virtual {v2}, Lcom/android/launcher3/util/IntArray;->toArray()[I

    move-result-object v3

    .line 855
    .local v3, "original":[I
    invoke-static {v3}, Ljava/util/Arrays;->sort([I)V

    .line 856
    const-string v4, ""

    .line 857
    .local v4, "updatemap":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v3

    const/4 v7, 0x3

    const/4 v8, 0x0

    if-ge v5, v6, :cond_6

    .line 858
    invoke-virtual {v2, v5}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v6

    aget v14, v3, v5

    if-eq v6, v14, :cond_5

    .line 859
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v14, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v12, v7, v8

    .line 860
    invoke-virtual {v2, v5}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v13

    aget v8, v3, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    .line 859
    const-string v8, " WHEN %1$s=%2$d THEN %3$d"

    invoke-static {v14, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 857
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 863
    .end local v5    # "i":I
    :cond_6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 864
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v8

    aput-object v12, v6, v13

    aput-object v4, v6, v11

    const-string v8, "container"

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const/16 v8, -0x64

    .line 867
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 864
    const-string v7, "UPDATE %1$s SET %2$s=CASE %3$s ELSE %2$s END WHERE %4$s = %5$d"

    invoke-static {v5, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 868
    .local v5, "query":Ljava/lang/String;
    invoke-virtual {v9, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 870
    .end local v5    # "query":Ljava/lang/String;
    :cond_7
    const-string v5, "workspaceScreens"

    invoke-static {v9, v5}, Lcom/android/launcher3/provider/LauncherDbUtils;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 873
    .end local v2    # "finalScreens":Lcom/android/launcher3/util/IntArray;
    .end local v3    # "original":[I
    .end local v4    # "updatemap":Ljava/lang/String;
    :pswitch_8
    const-wide/16 v2, -0x1

    const-string v4, "appWidgetSource"

    invoke-direct {p0, v9, v4, v2, v3}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->addIntegerColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Z

    move-result v2

    .line 875
    .local v2, "columnAdded":Z
    if-nez v2, :cond_8

    .line 877
    goto :goto_2

    .line 882
    .end local v2    # "columnAdded":Z
    :cond_8
    :pswitch_9
    new-array v2, v11, [I

    fill-array-data v2, :array_0

    .line 883
    invoke-static {v2}, Lcom/android/launcher3/util/IntArray;->wrap([I)Lcom/android/launcher3/util/IntArray;

    move-result-object v2

    .line 882
    invoke-static {v12, v2}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Lcom/android/launcher3/util/IntArray;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v9, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 887
    :pswitch_a
    return-void

    .line 793
    .local v4, "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_3
    invoke-virtual {v4}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/launcher3/LauncherProvider$DatabaseHelper;
    .end local p1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p2    # "oldVersion":I
    .end local p3    # "newVersion":I
    :goto_1
    throw v2
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    .line 798
    .end local v4    # "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    .restart local p0    # "this":Lcom/android/launcher3/LauncherProvider$DatabaseHelper;
    .restart local p1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p2    # "oldVersion":I
    .restart local p3    # "newVersion":I
    :catch_0
    move-exception v0

    .line 799
    .local v0, "ex":Landroid/database/SQLException;
    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 801
    nop

    .line 892
    .end local v0    # "ex":Landroid/database/SQLException;
    :goto_2
    const-string v0, "Destroying all old data."

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 894
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    :array_0
    .array-data 4
        -0x309
        -0x30a
    .end array-data
.end method

.method public removeGhostWidgets(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 926
    const-string v0, "LauncherProvider"

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->newLauncherWidgetHost()Landroid/appwidget/AppWidgetHost;

    move-result-object v1

    .line 931
    .local v1, "host":Landroid/appwidget/AppWidgetHost;
    :try_start_0
    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHost;->getAppWidgetIds()[I

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_1

    .line 935
    .local v2, "allWidgets":[I
    nop

    .line 936
    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v5, "favorites"

    const-string v6, "appWidgetId"

    const-string v7, "itemType=4"

    move-object v4, p1

    invoke-static/range {v3 .. v9}, Lcom/android/launcher3/provider/LauncherDbUtils;->queryIntArray(ZLandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher3/util/IntArray;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/util/IntSet;->wrap(Lcom/android/launcher3/util/IntArray;)Lcom/android/launcher3/util/IntSet;

    move-result-object v3

    .line 939
    .local v3, "validWidgets":Lcom/android/launcher3/util/IntSet;
    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget v6, v2, v5

    .line 940
    .local v6, "widgetId":I
    invoke-virtual {v3, v6}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 942
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Deleting invalid widget "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    invoke-virtual {v1, v6}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 946
    goto :goto_1

    .line 944
    :catch_0
    move-exception v7

    .line 939
    .end local v6    # "widgetId":I
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 949
    :cond_1
    return-void

    .line 932
    .end local v2    # "allWidgets":[I
    .end local v3    # "validWidgets":Lcom/android/launcher3/util/IntSet;
    :catch_1
    move-exception v2

    .line 933
    .local v2, "e":Ljava/lang/IncompatibleClassChangeError;
    const-string v3, "getAppWidgetIds not supported"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 934
    return-void
.end method

.method updateFolderItemsRank(Landroid/database/sqlite/SQLiteDatabase;Z)Z
    .locals 11
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "addRankColumn"    # Z

    .line 994
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;

    invoke-direct {v1, p1}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 995
    .local v1, "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    if-eqz p2, :cond_0

    .line 997
    :try_start_1
    const-string v2, "ALTER TABLE favorites ADD COLUMN rank INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1001
    :cond_0
    const-string v2, "SELECT container, MAX(cellX) FROM favorites WHERE container IN (SELECT _id FROM favorites WHERE itemType = ?) GROUP BY container;"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    .line 1004
    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    .line 1001
    invoke-virtual {p1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1006
    .local v2, "c":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1007
    const-string v4, "UPDATE favorites SET rank=cellX+(cellY*?) WHERE container=? AND cellX IS NOT NULL AND cellY IS NOT NULL;"

    new-array v6, v5, [Ljava/lang/Object;

    .line 1009
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v3

    .line 1007
    invoke-virtual {p1, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1012
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1013
    invoke-virtual {v1}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->commit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1014
    .end local v2    # "c":Landroid/database/Cursor;
    :try_start_2
    invoke-virtual {v1}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1018
    .end local v1    # "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    nop

    .line 1019
    return v3

    .line 994
    .restart local v1    # "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/launcher3/LauncherProvider$DatabaseHelper;
    .end local p1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p2    # "addRankColumn":Z
    :goto_1
    throw v2
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1014
    .end local v1    # "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    .restart local p0    # "this":Lcom/android/launcher3/LauncherProvider$DatabaseHelper;
    .restart local p1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p2    # "addRankColumn":Z
    :catch_0
    move-exception v1

    .line 1016
    .local v1, "ex":Landroid/database/SQLException;
    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LauncherProvider"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1017
    return v0
.end method
