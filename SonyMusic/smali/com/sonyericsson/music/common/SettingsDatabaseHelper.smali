.class public Lcom/sonyericsson/music/common/SettingsDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SettingsDatabaseHelper.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "settings.db"

.field private static final DATABASE_VERSION:I = 0x5

.field static final TABLE_PREFERENCES:Ljava/lang/String; = "settings"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "settings.db"

    const/4 v1, 0x0

    const/4 v2, 0x5

    .line 24
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x5

    .line 29
    invoke-virtual {p0, p1, v0, v1}, Lcom/sonyericsson/music/common/SettingsDatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 34
    sget-object p2, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    const/4 p2, 0x0

    .line 38
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/music/common/SettingsDatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .line 43
    sget-object v0, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    const/4 v0, 0x5

    if-ne p3, v0, :cond_5

    const/4 p3, 0x1

    if-ge p2, p3, :cond_0

    const-string p3, "DROP TABLE IF EXISTS settings"

    .line 54
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "CREATE TABLE settings (_id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT UNIQUE, value TEXT);"

    .line 56
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    const/4 p3, 0x2

    if-ge p2, p3, :cond_1

    const-string v1, "settings"

    .line 77
    invoke-static {p1, v1, p3}, Lcom/sonyericsson/music/common/SettingsProviderWrapper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)V

    :cond_1
    const/4 p3, 0x3

    if-ge p2, p3, :cond_2

    const-string v1, "settings"

    .line 83
    invoke-static {p1, v1, p3}, Lcom/sonyericsson/music/common/SettingsProviderWrapper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)V

    :cond_2
    const/4 p3, 0x4

    if-ge p2, p3, :cond_3

    const-string v1, "settings"

    .line 88
    invoke-static {p1, v1, p3}, Lcom/sonyericsson/music/common/SettingsProviderWrapper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)V

    :cond_3
    if-ge p2, v0, :cond_4

    const-string p2, "settings"

    .line 93
    invoke-static {p1, p2, v0}, Lcom/sonyericsson/music/common/SettingsProviderWrapper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)V

    :cond_4
    return-void

    .line 49
    :cond_5
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
