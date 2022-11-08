.class public Lcom/android/launcher3/shortcuts/ShortcutRequest;
.super Ljava/lang/Object;
.source "ShortcutRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;
    }
.end annotation


# static fields
.field public static final ALL:I = 0xb

.field public static final PINNED:I = 0x2

.field public static final PUBLISHED:I = 0x9

.field private static final TAG:Ljava/lang/String; = "ShortcutRequest"


# instance fields
.field private final mContext:Landroid/content/Context;

.field mFailed:Z

.field private final mQuery:Landroid/content/pm/LauncherApps$ShortcutQuery;

.field private final mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-direct {v0}, Landroid/content/pm/LauncherApps$ShortcutQuery;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutRequest;->mQuery:Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/shortcuts/ShortcutRequest;->mFailed:Z

    .line 57
    iput-object p1, p0, Lcom/android/launcher3/shortcuts/ShortcutRequest;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/android/launcher3/shortcuts/ShortcutRequest;->mUserHandle:Landroid/os/UserHandle;

    .line 59
    return-void
.end method


# virtual methods
.method public forPackage(Ljava/lang/String;)Lcom/android/launcher3/shortcuts/ShortcutRequest;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 63
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->forPackage(Ljava/lang/String;Ljava/util/List;)Lcom/android/launcher3/shortcuts/ShortcutRequest;

    move-result-object v0

    return-object v0
.end method

.method public forPackage(Ljava/lang/String;Ljava/util/List;)Lcom/android/launcher3/shortcuts/ShortcutRequest;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/launcher3/shortcuts/ShortcutRequest;"
        }
    .end annotation

    .line 76
    .local p2, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutRequest;->mQuery:Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-virtual {v0, p1}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setPackage(Ljava/lang/String;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 78
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutRequest;->mQuery:Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-virtual {v0, p2}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setShortcutIds(Ljava/util/List;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 80
    :cond_0
    return-object p0
.end method

.method public varargs forPackage(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/launcher3/shortcuts/ShortcutRequest;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcutIds"    # [Ljava/lang/String;

    .line 68
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->forPackage(Ljava/lang/String;Ljava/util/List;)Lcom/android/launcher3/shortcuts/ShortcutRequest;

    move-result-object v0

    return-object v0
.end method

.method public query(I)Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;
    .locals 4
    .param p1, "flags"    # I

    .line 95
    iget-boolean v0, p0, Lcom/android/launcher3/shortcuts/ShortcutRequest;->mFailed:Z

    if-eqz v0, :cond_0

    .line 96
    sget-object v0, Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;->DEFAULT:Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;

    return-object v0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutRequest;->mQuery:Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-virtual {v0, p1}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setQueryFlags(I)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 101
    :try_start_0
    new-instance v0, Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;

    iget-object v1, p0, Lcom/android/launcher3/shortcuts/ShortcutRequest;->mContext:Landroid/content/Context;

    const-class v2, Landroid/content/pm/LauncherApps;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherApps;

    iget-object v2, p0, Lcom/android/launcher3/shortcuts/ShortcutRequest;->mQuery:Landroid/content/pm/LauncherApps$ShortcutQuery;

    iget-object v3, p0, Lcom/android/launcher3/shortcuts/ShortcutRequest;->mUserHandle:Landroid/os/UserHandle;

    .line 102
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/LauncherApps;->getShortcuts(Landroid/content/pm/LauncherApps$ShortcutQuery;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;-><init>(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    return-object v0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "ShortcutRequest"

    const-string v2, "Failed to query for shortcuts"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    sget-object v1, Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;->DEFAULT:Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;

    return-object v1
.end method

.method public withContainer(Landroid/content/ComponentName;)Lcom/android/launcher3/shortcuts/ShortcutRequest;
    .locals 1
    .param p1, "activity"    # Landroid/content/ComponentName;

    .line 85
    if-nez p1, :cond_0

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/shortcuts/ShortcutRequest;->mFailed:Z

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutRequest;->mQuery:Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-virtual {v0, p1}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setActivity(Landroid/content/ComponentName;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 91
    :goto_0
    return-object p0
.end method
