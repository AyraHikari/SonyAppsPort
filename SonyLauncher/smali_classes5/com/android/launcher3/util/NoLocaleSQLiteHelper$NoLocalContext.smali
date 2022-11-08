.class Lcom/android/launcher3/util/NoLocaleSQLiteHelper$NoLocalContext;
.super Landroid/content/ContextWrapper;
.source "NoLocaleSQLiteHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/NoLocaleSQLiteHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoLocalContext"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;

    .line 48
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 49
    return-void
.end method


# virtual methods
.method public openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "errorHandler"    # Landroid/database/DatabaseErrorHandler;

    .line 54
    or-int/lit8 v0, p2, 0x10

    invoke-super {p0, p1, v0, p3, p4}, Landroid/content/ContextWrapper;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method
