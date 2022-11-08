.class public Lcom/android/launcher3/model/DbDowngradeHelper;
.super Ljava/lang/Object;
.source "DbDowngradeHelper.java"


# static fields
.field private static final KEY_DOWNGRADE_TO:Ljava/lang/String; = "downgrade_to_"

.field private static final KEY_VERSION:Ljava/lang/String; = "version"

.field private static final TAG:Ljava/lang/String; = "DbDowngradeHelper"


# instance fields
.field private final mStatements:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final version:I


# direct methods
.method private constructor <init>(I)V
    .locals 1
    .param p1, "version"    # I

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/DbDowngradeHelper;->mStatements:Landroid/util/SparseArray;

    .line 53
    iput p1, p0, Lcom/android/launcher3/model/DbDowngradeHelper;->version:I

    .line 54
    return-void
.end method

.method public static parse(Ljava/io/File;)Lcom/android/launcher3/model/DbDowngradeHelper;
    .locals 7
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    invoke-static {p0}, Lcom/android/launcher3/util/IOUtils;->toByteArray(Ljava/io/File;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, "obj":Lorg/json/JSONObject;
    new-instance v1, Lcom/android/launcher3/model/DbDowngradeHelper;

    const-string v2, "version"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/launcher3/model/DbDowngradeHelper;-><init>(I)V

    .line 78
    .local v1, "helper":Lcom/android/launcher3/model/DbDowngradeHelper;
    iget v2, v1, Lcom/android/launcher3/model/DbDowngradeHelper;->version:I

    add-int/lit8 v2, v2, -0x1

    .local v2, "version":I
    :goto_0
    if-lez v2, :cond_2

    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downgrade_to_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 81
    .local v3, "statements":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    .line 82
    .local v4, "parsed":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_0

    .line 83
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 82
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 85
    .end local v5    # "i":I
    :cond_0
    iget-object v5, v1, Lcom/android/launcher3/model/DbDowngradeHelper;->mStatements:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 78
    .end local v3    # "statements":Lorg/json/JSONArray;
    .end local v4    # "parsed":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 88
    .end local v2    # "version":I
    :cond_2
    return-object v1
.end method

.method public static updateSchemaFile(Ljava/io/File;ILandroid/content/Context;)V
    .locals 4
    .param p0, "schemaFile"    # Ljava/io/File;
    .param p1, "expectedVersion"    # I
    .param p2, "context"    # Landroid/content/Context;

    .line 93
    :try_start_0
    invoke-static {p0}, Lcom/android/launcher3/model/DbDowngradeHelper;->parse(Ljava/io/File;)Lcom/android/launcher3/model/DbDowngradeHelper;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/model/DbDowngradeHelper;->version:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v0, p1, :cond_0

    .line 94
    return-void

    .line 98
    :cond_0
    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 101
    :goto_0
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 102
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$raw;->downgrade_schema:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 103
    .local v1, "in":Ljava/io/InputStream;
    :try_start_3
    invoke-static {v1, v0}, Lcom/android/launcher3/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 104
    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v1    # "in":Ljava/io/InputStream;
    :cond_1
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 106
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 101
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_7
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .end local p0    # "schemaFile":Ljava/io/File;
    .end local p1    # "expectedVersion":I
    .end local p2    # "context":Landroid/content/Context;
    :cond_2
    :goto_1
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .end local v1    # "in":Ljava/io/InputStream;
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    .restart local p0    # "schemaFile":Ljava/io/File;
    .restart local p1    # "expectedVersion":I
    .restart local p2    # "context":Landroid/content/Context;
    :catchall_2
    move-exception v1

    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v2

    :try_start_9
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "schemaFile":Ljava/io/File;
    .end local p1    # "expectedVersion":I
    .end local p2    # "context":Landroid/content/Context;
    :goto_2
    throw v1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 104
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .restart local p0    # "schemaFile":Ljava/io/File;
    .restart local p1    # "expectedVersion":I
    .restart local p2    # "context":Landroid/content/Context;
    :catch_1
    move-exception v0

    .line 105
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "DbDowngradeHelper"

    const-string v2, "Error writing schema file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    .end local v0    # "e":Ljava/io/IOException;
    :goto_3
    return-void
.end method


# virtual methods
.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v0, "allCommands":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    add-int/lit8 v1, p2, -0x1

    .local v1, "i":I
    :goto_0
    if-lt v1, p3, :cond_1

    .line 60
    iget-object v2, p0, Lcom/android/launcher3/model/DbDowngradeHelper;->mStatements:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 61
    .local v2, "commands":[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 64
    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 59
    .end local v2    # "commands":[Ljava/lang/String;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 62
    .restart local v2    # "commands":[Ljava/lang/String;
    :cond_0
    new-instance v3, Landroid/database/sqlite/SQLiteException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Downgrade path not supported to version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 67
    .end local v1    # "i":I
    .end local v2    # "commands":[Ljava/lang/String;
    :cond_1
    new-instance v1, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;

    invoke-direct {v1, p1}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 68
    .local v1, "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 69
    .local v3, "sql":Ljava/lang/String;
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 70
    .end local v3    # "sql":Ljava/lang/String;
    goto :goto_1

    .line 71
    :cond_2
    invoke-virtual {v1}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->commit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    invoke-virtual {v1}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V

    .line 73
    .end local v1    # "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    return-void

    .line 67
    .restart local v1    # "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    :catchall_0
    move-exception v2

    :try_start_1
    invoke-virtual {v1}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v2
.end method
