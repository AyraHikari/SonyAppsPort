.class public Lcom/sonyericsson/music/library/CloudAccountLoader;
.super Landroidx/loader/content/CursorLoader;
.source "CloudAccountLoader.java"


# static fields
.field public static final CLOUD_SERVICE_GOOGLE_DRIVE:I = 0x1


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private final mCloudService:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 26
    invoke-direct/range {p0 .. p6}, Landroidx/loader/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/library/CloudAccountLoader;->mAppContext:Landroid/content/Context;

    .line 29
    iput p7, p0, Lcom/sonyericsson/music/library/CloudAccountLoader;->mCloudService:I

    return-void
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 6

    .line 39
    iget v0, p0, Lcom/sonyericsson/music/library/CloudAccountLoader;->mCloudService:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    move-object v4, v3

    const/4 v0, 0x0

    goto :goto_0

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/library/CloudAccountLoader;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/music/authentication/GoogleProfile;->get(Landroid/content/Context;)Lcom/sonyericsson/music/authentication/GoogleProfile;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/sonyericsson/music/authentication/GoogleProfile;->getAccountName()Ljava/lang/String;

    move-result-object v4

    .line 43
    invoke-virtual {v0}, Lcom/sonyericsson/music/authentication/GoogleProfile;->isSignedIn()Z

    move-result v0

    .line 51
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v0, :cond_1

    const-string v0, "name = ?"

    .line 53
    new-array v1, v1, [Ljava/lang/String;

    aput-object v4, v1, v2

    .line 55
    invoke-virtual {p0, v0}, Landroidx/loader/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, v1}, Landroidx/loader/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    .line 58
    invoke-super {p0}, Landroidx/loader/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v3

    :cond_1
    return-object v3
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/CloudAccountLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
