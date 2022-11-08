.class public Lcom/sonymobile/launcher/provider/BadgeResourceProvider;
.super Landroid/content/ContentProvider;
.source "BadgeResourceProvider.java"


# static fields
.field private static final BADGE_MATCH:I = 0x0

.field private static final BADGE_PROJECTION:[Ljava/lang/String;

.field private static final MAX_DB_OPERATION_RETRY_COUNT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BadgeResourceProvider"

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mDialerOSVChecker:Z

.field mHelper:Lcom/sonymobile/launcher/storage/BadgeSQLiteOpenHelper;

.field protected mPermissionValidator:Lcom/sonymobile/launcher/provider/PermissionValidator;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 58
    const-string v0, "package_name"

    const-string v1, "name"

    const-string v2, "badge"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/launcher/provider/BadgeResourceProvider;->BADGE_PROJECTION:[Ljava/lang/String;

    .line 65
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sonymobile/launcher/provider/BadgeResourceProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 66
    const-string v1, "com.sonymobile.home.resourceprovider"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 68
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 41
    new-instance v0, Lcom/sonymobile/launcher/provider/PermissionValidator;

    invoke-direct {v0}, Lcom/sonymobile/launcher/provider/PermissionValidator;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/launcher/provider/BadgeResourceProvider;->mPermissionValidator:Lcom/sonymobile/launcher/provider/PermissionValidator;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/launcher/provider/BadgeResourceProvider;->mDialerOSVChecker:Z

    return-void
.end method

.method private checkActivity(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 235
    if-eqz p1, :cond_5

    .line 238
    if-eqz p2, :cond_4

    .line 241
    if-eqz p3, :cond_3

    .line 244
    invoke-virtual {p0}, Lcom/sonymobile/launcher/provider/BadgeResourceProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 245
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/sonymobile/launcher/provider/BadgeResourceProvider;->mPermissionValidator:Lcom/sonymobile/launcher/provider/PermissionValidator;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/sonymobile/launcher/provider/PermissionValidator;->isLauncherActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 249
    iget-object v1, p0, Lcom/sonymobile/launcher/provider/BadgeResourceProvider;->mPermissionValidator:Lcom/sonymobile/launcher/provider/PermissionValidator;

    invoke-virtual {v1, v0, p1}, Lcom/sonymobile/launcher/provider/PermissionValidator;->verifyPackageBelongsToCallingUid(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sonymobile/launcher/provider/BadgeResourceProvider;->mPermissionValidator:Lcom/sonymobile/launcher/provider/PermissionValidator;

    .line 250
    invoke-virtual {v1, v0}, Lcom/sonymobile/launcher/provider/PermissionValidator;->hasInsertBadgeProxyPermission(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 251
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not belong to calling uid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 253
    :cond_1
    :goto_0
    return-void

    .line 246
    :cond_2
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a launcher activity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 242
    .end local v0    # "context":Landroid/content/Context;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "User is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Activity name is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Package name is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private copyStringKey(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 1
    .param p1, "original"    # Landroid/content/ContentValues;
    .param p2, "copy"    # Landroid/content/ContentValues;
    .param p3, "key"    # Ljava/lang/String;

    .line 98
    invoke-virtual {p1, p3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p1, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_0
    return-void
.end method

.method private deleteBadgeFromDB(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "databaseExceptionCount"    # I

    .line 279
    const/4 v0, 0x0

    .line 281
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/launcher/provider/BadgeResourceProvider;->mHelper:Lcom/sonymobile/launcher/storage/BadgeSQLiteOpenHelper;

    invoke-virtual {v1}, Lcom/sonymobile/launcher/storage/BadgeSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    move-object v0, v1

    .line 282
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    const/4 v1, 0x0

    :try_start_1
    const-string v2, "badge_table"

    const-string v3, "package_name =? AND name =?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 288
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 290
    :try_start_2
    invoke-static {v0}, Lcom/sonymobile/launcher/provider/BadgeResourceProvider;->endTransactionSafely(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 291
    invoke-virtual {p0}, Lcom/sonymobile/launcher/provider/BadgeResourceProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/launcher/provider/BadgeProviderContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 293
    goto :goto_0

    .line 290
    :catchall_0
    move-exception v2

    invoke-static {v0}, Lcom/sonymobile/launcher/provider/BadgeResourceProvider;->endTransactionSafely(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 291
    invoke-virtual {p0}, Lcom/sonymobile/launcher/provider/BadgeResourceProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sonymobile/launcher/provider/BadgeProviderContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 293
    nop

    .end local v0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .end local p0    # "this":Lcom/sonymobile/launcher/provider/BadgeResourceProvider;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "activityName":Ljava/lang/String;
    .end local p3    # "databaseExceptionCount":I
    throw v2
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_2 .. :try_end_2} :catch_0

    .line 296
    .restart local v0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p0    # "this":Lcom/sonymobile/launcher/provider/BadgeResourceProvider;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "activityName":Ljava/lang/String;
    .restart local p3    # "databaseExceptionCount":I
    :catch_0
    move-exception v1

    .line 297
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    invoke-static {v0, v1, p3}, Lcom/sonymobile/launcher/provider/BadgeResourceProvider;->handleFatalDatabaseException(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteException;I)V

    .line 299
    add-int/lit8 v2, p3, 0x1

    invoke-direct {p0, p1, p2, v2}, Lcom/sonymobile/launcher/provider/BadgeResourceProvider;->deleteBadgeFromDB(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 294
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v1

    .line 295
    .local v1, "e":Landroid/database/sqlite/SQLiteFullException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Database full: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteFullException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BadgeResourceProvider"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    .end local v1    # "e":Landroid/database/sqlite/SQLiteFullException;
    :goto_0
    nop

    .line 301
    :goto_1
    return-void
.end method

.method private static endTransactionSafely(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p0, "database"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 368
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    goto :goto_0

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, "endTransactionException":Landroid/database/sqlite/SQLiteException;
    const-string v1, "BadgeResourceProvider"

    const-string v2, "Could not end transaction, closing database. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 372
    :try_start_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 375
    goto :goto_0

    .line 373
    :catch_1
    move-exception v2

    .line 374
    .local v2, "closeDatabaseException":Landroid/database/sqlite/SQLiteException;
    const-string v3, "Could not close database. "

    invoke-static {v1, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 377
    .end local v0    # "endTransactionException":Landroid/database/sqlite/SQLiteException;
    .end local v2    # "closeDatabaseException":Landroid/database/sqlite/SQLiteException;
    :goto_0
    return-void
.end method

.method private static getBadgeCount(Ljava/lang/String;)I
    .locals 3
    .param p0, "badgeString"    # Ljava/lang/String;

    .line 395
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 396
    :catch_0
    move-exception v0

    .line 397
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sony badge from database was not an integer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BadgeResourceProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const/4 v1, 0x0

    return v1
.end method

.method private getBadges(Landroid/database/MatrixCursor;I)Landroid/database/MatrixCursor;
    .locals 17
    .param p1, "cursor"    # Landroid/database/MatrixCursor;
    .param p2, "databaseExceptionCount"    # I

    .line 304
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    const-string v0, "com.android.dialer.app.DialtactsActivity"

    const/4 v4, 0x0

    .line 305
    .local v4, "database":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x0

    .line 307
    .local v5, "tempCursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v6, v1, Lcom/sonymobile/launcher/provider/BadgeResourceProvider;->mHelper:Lcom/sonymobile/launcher/storage/BadgeSQLiteOpenHelper;

    invoke-virtual {v6}, Lcom/sonymobile/launcher/storage/BadgeSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_0 .. :try_end_0} :catch_2

    .line 309
    .end local v4    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .local v7, "database":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    const-string v8, "badge_table"

    sget-object v9, Lcom/sonymobile/launcher/provider/BadgeResourceProvider;->BADGE_PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v7 .. v14}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v5, v4

    .line 311
    if-eqz v5, :cond_3

    .line 312
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 313
    const-string v4, "package_name"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 315
    .local v4, "indexPackageName":I
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 316
    .local v6, "packageName":Ljava/lang/String;
    const-string v8, "name"

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 318
    .local v8, "indexName":I
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 319
    .local v9, "activityName":Ljava/lang/String;
    const-string v10, "badge"

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 321
    .local v10, "indexBadge":I
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 322
    .local v11, "badgeMessage":Ljava/lang/String;
    invoke-static {v11}, Lcom/sonymobile/launcher/provider/BadgeResourceProvider;->getBadgeCount(Ljava/lang/String;)I

    move-result v12

    .line 323
    .local v12, "badgeCount":I
    iget-boolean v13, v1, Lcom/sonymobile/launcher/provider/BadgeResourceProvider;->mDialerOSVChecker:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v13, :cond_2

    .line 324
    move-object v13, v0

    .line 325
    .local v13, "dialerAndroidPActivityName":Ljava/lang/String;
    const-string v14, "com.sonymobile.android.dialer"

    move-object v15, v14

    .line 326
    .local v15, "dialerPackageName":Ljava/lang/String;
    if-eqz v6, :cond_1

    if-eqz v9, :cond_1

    .line 327
    :try_start_2
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 328
    move/from16 v16, v4

    .end local v4    # "indexPackageName":I
    .local v16, "indexPackageName":I
    const/4 v4, 0x0

    invoke-direct {v1, v14, v0, v4}, Lcom/sonymobile/launcher/provider/BadgeResourceProvider;->deleteBadgeFromDB(Ljava/lang/String;Ljava/lang/String;I)V

    .line 329
    iput-boolean v4, v1, Lcom/sonymobile/launcher/provider/BadgeResourceProvider;->mDialerOSVChecker:Z

    .line 330
    goto :goto_0

    .line 327
    .end local v16    # "indexPackageName":I
    .restart local v4    # "indexPackageName":I
    :cond_0
    move/from16 v16, v4

    .end local v4    # "indexPackageName":I
    .restart local v16    # "indexPackageName":I
    goto :goto_1

    .line 326
    .end local v16    # "indexPackageName":I
    .restart local v4    # "indexPackageName":I
    :cond_1
    move/from16 v16, v4

    .end local v4    # "indexPackageName":I
    .restart local v16    # "indexPackageName":I
    goto :goto_1

    .line 323
    .end local v13    # "dialerAndroidPActivityName":Ljava/lang/String;
    .end local v15    # "dialerPackageName":Ljava/lang/String;
    .end local v16    # "indexPackageName":I
    .restart local v4    # "indexPackageName":I
    :cond_2
    move/from16 v16, v4

    .line 334
    .end local v4    # "indexPackageName":I
    .restart local v16    # "indexPackageName":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v4

    .line 335
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 336
    nop

    .end local v6    # "packageName":Ljava/lang/String;
    .end local v8    # "indexName":I
    .end local v9    # "activityName":Ljava/lang/String;
    .end local v10    # "indexBadge":I
    .end local v11    # "badgeMessage":Ljava/lang/String;
    .end local v12    # "badgeCount":I
    .end local v16    # "indexPackageName":I
    goto :goto_0

    .line 339
    :cond_3
    if-eqz v5, :cond_4

    .line 340
    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 350
    :cond_4
    move-object v4, v7

    goto :goto_4

    .line 339
    :catchall_0
    move-exception v0

    if-eqz v5, :cond_5

    .line 340
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 342
    :cond_5
    nop

    .end local v5    # "tempCursor":Landroid/database/Cursor;
    .end local v7    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .end local p0    # "this":Lcom/sonymobile/launcher/provider/BadgeResourceProvider;
    .end local p1    # "cursor":Landroid/database/MatrixCursor;
    .end local p2    # "databaseExceptionCount":I
    throw v0
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_3 .. :try_end_3} :catch_0

    .line 345
    .restart local v5    # "tempCursor":Landroid/database/Cursor;
    .restart local v7    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p0    # "this":Lcom/sonymobile/launcher/provider/BadgeResourceProvider;
    .restart local p1    # "cursor":Landroid/database/MatrixCursor;
    .restart local p2    # "databaseExceptionCount":I
    :catch_0
    move-exception v0

    move-object v4, v7

    goto :goto_2

    .line 343
    :catch_1
    move-exception v0

    move-object v4, v7

    goto :goto_3

    .line 345
    .end local v7    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .local v4, "database":Landroid/database/sqlite/SQLiteDatabase;
    :catch_2
    move-exception v0

    .line 346
    .local v0, "e":Landroid/database/sqlite/SQLiteCantOpenDatabaseException;
    :goto_2
    invoke-static {v4, v0, v3}, Lcom/sonymobile/launcher/provider/BadgeResourceProvider;->isRetryWantedOnNonFatalDatabaseException(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteException;I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 348
    add-int/lit8 v6, v3, 0x1

    invoke-direct {v1, v2, v6}, Lcom/sonymobile/launcher/provider/BadgeResourceProvider;->getBadges(Landroid/database/MatrixCursor;I)Landroid/database/MatrixCursor;

    goto :goto_4

    .line 343
    .end local v0    # "e":Landroid/database/sqlite/SQLiteCantOpenDatabaseException;
    :catch_3
    move-exception v0

    .line 344
    .local v0, "e":Landroid/database/sqlite/SQLiteFullException;
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Database full: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteFullException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "BadgeResourceProvider"

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    .end local v0    # "e":Landroid/database/sqlite/SQLiteFullException;
    nop

    .line 351
    :cond_6
    :goto_4
    return-object v2
.end method

.method private static handleFatalDatabaseException(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteException;I)V
    .locals 2
    .param p0, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "e"    # Landroid/database/sqlite/SQLiteException;
    .param p2, "exceptionCount"    # I

    .line 356
    const/4 v0, 0x2

    if-ge p2, v0, :cond_1

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "database("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BadgeResourceProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    if-eqz p0, :cond_0

    .line 359
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 364
    :cond_0
    return-void

    .line 362
    :cond_1
    throw p1
.end method

.method private insertBadge(Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8
    .param p1, "values"    # Landroid/content/ContentValues;

    .line 160
    const-string v0, "package_name"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "packageName":Ljava/lang/String;
    const-string v2, "activity_name"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, "activityName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 163
    .local v3, "user":Landroid/os/UserHandle;
    invoke-virtual {p0}, Lcom/sonymobile/launcher/provider/BadgeResourceProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 166
    .local v4, "context":Landroid/content/Context;
    invoke-virtual {p0, v4, v1, v3}, Lcom/sonymobile/launcher/provider/BadgeResourceProvider;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 167
    const/4 v0, 0x0

    return-object v0

    .line 171
    :cond_0
    iget-object v5, p0, Lcom/sonymobile/launcher/provider/BadgeResourceProvider;->mPermissionValidator:Lcom/sonymobile/launcher/provider/PermissionValidator;

    invoke-virtual {v5, v4}, Lcom/sonymobile/launcher/provider/PermissionValidator;->hasInsertBadgePermission(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 178
    invoke-direct {p0, v1, v2, v3}, Lcom/sonymobile/launcher/provider/BadgeResourceProvider;->checkActivity(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 180
    const-string v5, "badge_count"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 181
    .local v5, "badgeCount":Ljava/lang/Integer;
    if-eqz v5, :cond_3

    .line 183
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ltz v6, :cond_2

    .line 187
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x0

    if-lez v6, :cond_1

    .line 188
    invoke-virtual {p1}, Landroid/content/ContentValues;->clear()V

    .line 189
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v0, "name"

    invoke-virtual {p1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v0, "badge"

    invoke-virtual {p1, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 192
    invoke-direct {p0, p1, v7}, Lcom/sonymobile/launcher/provider/BadgeResourceProvider;->insertBadgeToDB(Landroid/content/ContentValues;I)V

    goto :goto_0

    .line 194
    :cond_1
    invoke-direct {p0, v1, v2, v7}, Lcom/sonymobile/launcher/provider/BadgeResourceProvider;->deleteBadgeFromDB(Ljava/lang/String;Ljava/lang/String;I)V

    .line 197
    :goto_0
    sget-object v0, Lcom/sonymobile/launcher/provider/BadgeProviderContract;->CONTENT_URI:Landroid/net/Uri;

    return-object v0

    .line 184
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v6, "Badge count is negative"

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v6, "Badge count is null"

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    .end local v5    # "badgeCount":Ljava/lang/Integer;
    :cond_4
    new-instance v0, Ljava/lang/SecurityException;

    const-string v5, "Missing permission to insert badges"

    invoke-direct {v0, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private insertBadgeToDB(Landroid/content/ContentValues;I)V
    .locals 5
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "databaseExceptionCount"    # I

    .line 256
    const/4 v0, 0x0

    .line 258
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/launcher/provider/BadgeResourceProvider;->mHelper:Lcom/sonymobile/launcher/storage/BadgeSQLiteOpenHelper;

    invoke-virtual {v1}, Lcom/sonymobile/launcher/storage/BadgeSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    move-object v0, v1

    .line 259
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    const/4 v1, 0x0

    :try_start_1
    const-string v2, "badge_table"

    invoke-virtual {v0, v2, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 262
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 264
    :try_start_2
    invoke-static {v0}, Lcom/sonymobile/launcher/provider/BadgeResourceProvider;->endTransactionSafely(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 265
    invoke-virtual {p0}, Lcom/sonymobile/launcher/provider/BadgeResourceProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/launcher/provider/BadgeProviderContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 267
    goto :goto_0

    .line 264
    :catchall_0
    move-exception v2

    invoke-static {v0}, Lcom/sonymobile/launcher/provider/BadgeResourceProvider;->endTransactionSafely(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 265
    invoke-virtual {p0}, Lcom/sonymobile/launcher/provider/BadgeResourceProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sonymobile/launcher/provider/BadgeProviderContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 267
    nop

    .end local v0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .end local p0    # "this":Lcom/sonymobile/launcher/provider/BadgeResourceProvider;
    .end local p1    # "values":Landroid/content/ContentValues;
    .end local p2    # "databaseExceptionCount":I
    throw v2
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_2 .. :try_end_2} :catch_0

    .line 270
    .restart local v0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p0    # "this":Lcom/sonymobile/launcher/provider/BadgeResourceProvider;
    .restart local p1    # "values":Landroid/content/ContentValues;
    .restart local p2    # "databaseExceptionCount":I
    :catch_0
    move-exception v1

    .line 271
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    invoke-static {v0, v1, p2}, Lcom/sonymobile/launcher/provider/BadgeResourceProvider;->handleFatalDatabaseException(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteException;I)V

    .line 273
    add-int/lit8 v2, p2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/sonymobile/launcher/provider/BadgeResourceProvider;->insertBadgeToDB(Landroid/content/ContentValues;I)V

    goto :goto_1

    .line 268
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v1

    .line 269
    .local v1, "e":Landroid/database/sqlite/SQLiteFullException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Database full: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteFullException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BadgeResourceProvider"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    .end local v1    # "e":Landroid/database/sqlite/SQLiteFullException;
    :goto_0
    nop

    .line 275
    :goto_1
    return-void
.end method

.method private static isRetryWantedOnNonFatalDatabaseException(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteException;I)Z
    .locals 3
    .param p0, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "e"    # Landroid/database/sqlite/SQLiteException;
    .param p2, "exceptionCount"    # I

    .line 381
    const-string v0, "BadgeResourceProvider"

    const/4 v1, 0x2

    if-ge p2, v1, :cond_1

    .line 382
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "database("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    if-eqz p0, :cond_0

    .line 384
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 386
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 388
    :cond_1
    const-string v1, "database operation failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 389
    const/4 v0, 0x0

    return v0
.end method

.method private queryBadges(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .line 208
    invoke-virtual {p0}, Lcom/sonymobile/launcher/provider/BadgeResourceProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 209
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/sonymobile/launcher/provider/BadgeResourceProvider;->mPermissionValidator:Lcom/sonymobile/launcher/provider/PermissionValidator;

    invoke-virtual {v1, v0}, Lcom/sonymobile/launcher/provider/PermissionValidator;->hasReadBadgePermission(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "package_name"

    const-string v3, "activity_name"

    const-string v4, "badge_count"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 220
    .local v1, "cursor":Landroid/database/MatrixCursor;
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sonymobile/launcher/provider/BadgeResourceProvider;->getBadges(Landroid/database/MatrixCursor;I)Landroid/database/MatrixCursor;

    move-result-object v2

    return-object v2

    .line 210
    .end local v1    # "cursor":Landroid/database/MatrixCursor;
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Missing permission to read badges"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 123
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 128
    sget-object v0, Lcom/sonymobile/launcher/provider/BadgeResourceProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/vnd.com.sonymobile.home.resourceprovider.badge"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 82
    new-instance v0, Landroid/content/ContentValues;

    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 83
    .local v0, "copy":Landroid/content/ContentValues;
    const-string v1, "package_name"

    invoke-direct {p0, p2, v0, v1}, Lcom/sonymobile/launcher/provider/BadgeResourceProvider;->copyStringKey(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 84
    const-string v1, "activity_name"

    invoke-direct {p0, p2, v0, v1}, Lcom/sonymobile/launcher/provider/BadgeResourceProvider;->copyStringKey(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 85
    const-string v1, "badge_count"

    invoke-direct {p0, p2, v0, v1}, Lcom/sonymobile/launcher/provider/BadgeResourceProvider;->copyStringKey(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 87
    sget-object v1, Lcom/sonymobile/launcher/provider/BadgeResourceProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 93
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/sonymobile/launcher/provider/BadgeResourceProvider;->insertBadge(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected isPackageEnabled(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 149
    invoke-virtual {p0}, Lcom/sonymobile/launcher/provider/BadgeResourceProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/content/pm/LauncherApps;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    invoke-virtual {v0, p2, p3}, Landroid/content/pm/LauncherApps;->isPackageEnabled(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public onCreate()Z
    .locals 2

    .line 72
    new-instance v0, Lcom/sonymobile/launcher/storage/BadgeSQLiteOpenHelper;

    invoke-virtual {p0}, Lcom/sonymobile/launcher/provider/BadgeResourceProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/launcher/storage/BadgeSQLiteOpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonymobile/launcher/provider/BadgeResourceProvider;->mHelper:Lcom/sonymobile/launcher/storage/BadgeSQLiteOpenHelper;

    .line 73
    invoke-virtual {v0}, Lcom/sonymobile/launcher/storage/BadgeSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 106
    sget-object v0, Lcom/sonymobile/launcher/provider/BadgeResourceProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sonymobile/launcher/provider/BadgeResourceProvider;->queryBadges(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 118
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
