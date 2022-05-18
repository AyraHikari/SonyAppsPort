.class public Lcom/sonyericsson/music/settings/GoogleDriveSettingsLoader;
.super Landroidx/loader/content/CursorLoader;
.source "GoogleDriveSettingsLoader.java"


# static fields
.field public static final COLUMN_ACCOUNT_NAME:Ljava/lang/String; = "account_name"

.field public static final COLUMN_DOWNLOAD_CONNECTION:Ljava/lang/String; = "download_connection"

.field public static final COLUMN_IS_SIGNED_IN:Ljava/lang/String; = "is_signed_in"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Landroidx/loader/content/CursorLoader;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 9

    .line 30
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f100265

    .line 32
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 34
    new-instance v2, Landroid/database/MatrixCursor;

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "download_connection"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "account_name"

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-string v5, "is_signed_in"

    const/4 v8, 0x2

    aput-object v5, v4, v8

    invoke-direct {v2, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v4, 0x64

    .line 41
    invoke-static {v0, v1, v4}, Lcom/sonyericsson/music/common/SettingsProviderWrapper;->get(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 42
    new-array v3, v3, [Ljava/lang/Object;

    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v6

    .line 45
    invoke-static {v0}, Lcom/sonyericsson/music/authentication/GoogleProfile;->get(Landroid/content/Context;)Lcom/sonyericsson/music/authentication/GoogleProfile;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/sonyericsson/music/authentication/GoogleProfile;->getAccountName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v7

    .line 47
    invoke-virtual {v0}, Lcom/sonyericsson/music/authentication/GoogleProfile;->isSignedIn()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v8

    .line 48
    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v2
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/sonyericsson/music/settings/GoogleDriveSettingsLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
