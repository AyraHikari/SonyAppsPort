.class public Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
.super Landroid/os/Binder;
.source "LauncherDbUtils.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/provider/LauncherDbUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SQLiteTransaction"
.end annotation


# instance fields
.field private final mDb:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 117
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 119
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 120
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 129
    return-void
.end method

.method public commit()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 124
    return-void
.end method

.method public getDb()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method
