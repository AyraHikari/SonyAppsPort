.class public Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconContentProvider;
.super Landroid/content/ContentProvider;
.source "HideLauncherIconContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconContentProvider$HideLauncherIconListener;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.sonymobile.launcher.hidelaunchericonscontentprovider"

.field private static final PACKAGE:I = 0x1

.field private static final PACKAGE_ID:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static sHideLauncherIconListener:Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconContentProvider$HideLauncherIconListener;

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mHelper:Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 28
    const-class v0, Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconContentProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconContentProvider;->TAG:Ljava/lang/String;

    .line 41
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 42
    const-string v1, "com.sonymobile.launcher.hidelaunchericonscontentprovider"

    const-string v2, "hide_launcher_icon"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 43
    const-string v2, "hide_launcher_icon/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static setHideLauncherIconListener(Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconContentProvider$HideLauncherIconListener;)V
    .locals 0
    .param p0, "listener"    # Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconContentProvider$HideLauncherIconListener;

    .line 179
    sput-object p0, Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconContentProvider;->sHideLauncherIconListener:Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconContentProvider$HideLauncherIconListener;

    .line 180
    return-void
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 16
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # [Landroid/content/ContentValues;

    .line 107
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    sget-object v0, Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 112
    move-object/from16 v4, p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URI "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :pswitch_0
    const-string v3, "hide_launcher_icon"

    .line 110
    .local v3, "insertTable":Ljava/lang/String;
    nop

    .line 115
    move-object/from16 v4, p0

    iget-object v0, v4, Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconContentProvider;->mHelper:Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconDatabaseHelper;

    invoke-virtual {v0}, Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 116
    .local v5, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 118
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v0, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v6, v2

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_2

    aget-object v9, v2, v8

    .line 121
    .local v9, "cv":Landroid/content/ContentValues;
    const-string v10, "package_name"

    .line 122
    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 124
    .local v10, "packageName":Ljava/lang/String;
    const-string v11, "com.sonymobile.gameenhancer"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 125
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    const/4 v15, 0x0

    goto :goto_1

    .line 129
    :cond_0
    const/4 v11, 0x0

    invoke-virtual {v5, v3, v11, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v11

    .line 130
    .local v11, "newID":J
    const-wide/16 v13, 0x0

    cmp-long v13, v11, v13

    if-gtz v13, :cond_1

    .line 131
    sget-object v13, Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconContentProvider;->TAG:Ljava/lang/String;

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to insert row into "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v15, 0x0

    aput-object v7, v14, v15

    invoke-static {v13, v14}, Lcom/sonymobile/launcher/util/Log;->e(Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 133
    :cond_1
    const/4 v15, 0x0

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    .end local v9    # "cv":Landroid/content/ContentValues;
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v11    # "newID":J
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 136
    :cond_2
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 137
    sget-object v6, Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconContentProvider;->sHideLauncherIconListener:Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconContentProvider$HideLauncherIconListener;

    if-eqz v6, :cond_3

    .line 138
    invoke-interface {v6, v0}, Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconContentProvider$HideLauncherIconListener;->onInserted(Ljava/util/List;)V

    .line 140
    :cond_3
    array-length v6, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v6

    .line 142
    .local v0, "numInserted":I
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 143
    nop

    .line 144
    return v0

    .line 142
    .end local v0    # "numInserted":I
    :catchall_0
    move-exception v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 143
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "strings"    # [Ljava/lang/String;

    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, "count":I
    if-eqz p3, :cond_0

    .line 151
    iget-object v1, p0, Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconContentProvider;->mHelper:Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconDatabaseHelper;

    invoke-virtual {v1}, Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 153
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v2, Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 159
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 156
    :pswitch_0
    const-string v2, "hide_launcher_icon"

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 157
    nop

    .line 162
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 164
    .local v2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v3, Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconContentProvider;->sHideLauncherIconListener:Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconContentProvider$HideLauncherIconListener;

    if-eqz v3, :cond_0

    .line 165
    invoke-interface {v3, v2}, Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconContentProvider$HideLauncherIconListener;->onDeleted(Ljava/util/List;)V

    .line 169
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 79
    sget-object v0, Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 85
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

    .line 81
    :pswitch_0
    const-string v0, "hide_launcher_icon"

    .line 82
    .local v0, "insertTable":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconDatabaseHelper$HideLauncherIconColumns;->CONTENT_URI:Landroid/net/Uri;

    .line 83
    .local v1, "contentUri":Landroid/net/Uri;
    nop

    .line 88
    iget-object v2, p0, Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconContentProvider;->mHelper:Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconDatabaseHelper;

    invoke-virtual {v2}, Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 89
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 90
    .local v3, "rowId":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_1

    .line 91
    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 92
    .local v5, "returnUri":Landroid/net/Uri;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v6, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v7, "package_name"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v7, Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconContentProvider;->sHideLauncherIconListener:Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconContentProvider$HideLauncherIconListener;

    if-eqz v7, :cond_0

    .line 95
    invoke-interface {v7, v6}, Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconContentProvider$HideLauncherIconListener;->onInserted(Ljava/util/List;)V

    .line 97
    :cond_0
    return-object v5

    .line 99
    .end local v5    # "returnUri":Landroid/net/Uri;
    .end local v6    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to insert row into "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 2

    .line 48
    new-instance v0, Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconDatabaseHelper;

    invoke-virtual {p0}, Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconContentProvider;->mHelper:Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconDatabaseHelper;

    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 55
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 56
    .local v0, "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v1, Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 62
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

    .line 59
    :pswitch_0
    const-string v1, "hide_launcher_icon"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 60
    nop

    .line 65
    iget-object v1, p0, Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconContentProvider;->mHelper:Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconDatabaseHelper;

    invoke-virtual {v1}, Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 66
    .local v9, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, v9

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "contentValues"    # Landroid/content/ContentValues;
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "strings"    # [Ljava/lang/String;

    .line 175
    const/4 v0, 0x0

    return v0
.end method
