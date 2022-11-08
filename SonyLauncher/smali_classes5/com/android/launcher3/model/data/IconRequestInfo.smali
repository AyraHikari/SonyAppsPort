.class public Lcom/android/launcher3/model/data/IconRequestInfo;
.super Ljava/lang/Object;
.source "IconRequestInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/launcher3/model/data/ItemInfoWithIcon;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IconRequestInfo"


# instance fields
.field public final iconBlob:[B

.field public final itemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final launcherActivityInfo:Landroid/content/pm/LauncherActivityInfo;

.field public final packageName:Ljava/lang/String;

.field public final resourceName:Ljava/lang/String;

.field public final useLowResIcon:Z


# direct methods
.method public constructor <init>(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/LauncherActivityInfo;Ljava/lang/String;Ljava/lang/String;[BZ)V
    .locals 0
    .param p2, "launcherActivityInfo"    # Landroid/content/pm/LauncherActivityInfo;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "resourceName"    # Ljava/lang/String;
    .param p5, "iconBlob"    # [B
    .param p6, "useLowResIcon"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/content/pm/LauncherActivityInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[BZ)V"
        }
    .end annotation

    .line 69
    .local p0, "this":Lcom/android/launcher3/model/data/IconRequestInfo;, "Lcom/android/launcher3/model/data/IconRequestInfo<TT;>;"
    .local p1, "itemInfo":Lcom/android/launcher3/model/data/ItemInfoWithIcon;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/android/launcher3/model/data/IconRequestInfo;->itemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    .line 71
    iput-object p2, p0, Lcom/android/launcher3/model/data/IconRequestInfo;->launcherActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    .line 72
    iput-object p3, p0, Lcom/android/launcher3/model/data/IconRequestInfo;->packageName:Ljava/lang/String;

    .line 73
    iput-object p4, p0, Lcom/android/launcher3/model/data/IconRequestInfo;->resourceName:Ljava/lang/String;

    .line 74
    iput-object p5, p0, Lcom/android/launcher3/model/data/IconRequestInfo;->iconBlob:[B

    .line 75
    iput-boolean p6, p0, Lcom/android/launcher3/model/data/IconRequestInfo;->useLowResIcon:Z

    .line 76
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/LauncherActivityInfo;Z)V
    .locals 7
    .param p2, "launcherActivityInfo"    # Landroid/content/pm/LauncherActivityInfo;
    .param p3, "useLowResIcon"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/content/pm/LauncherActivityInfo;",
            "Z)V"
        }
    .end annotation

    .line 54
    .local p0, "this":Lcom/android/launcher3/model/data/IconRequestInfo;, "Lcom/android/launcher3/model/data/IconRequestInfo<TT;>;"
    .local p1, "itemInfo":Lcom/android/launcher3/model/data/ItemInfoWithIcon;, "TT;"
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/model/data/IconRequestInfo;-><init>(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/LauncherActivityInfo;Ljava/lang/String;Ljava/lang/String;[BZ)V

    .line 61
    return-void
.end method


# virtual methods
.method public loadWorkspaceIcon(Landroid/content/Context;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 83
    .local p0, "this":Lcom/android/launcher3/model/data/IconRequestInfo;, "Lcom/android/launcher3/model/data/IconRequestInfo<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/model/data/IconRequestInfo;->itemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    instance-of v0, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v0, :cond_8

    .line 88
    invoke-static {p1}, Lcom/android/launcher3/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherIcons;

    move-result-object v0

    .line 89
    .local v0, "li":Lcom/android/launcher3/icons/LauncherIcons;
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/model/data/IconRequestInfo;->itemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    move-object v2, v1

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 90
    .local v2, "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->itemType:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 91
    iget-object v1, p0, Lcom/android/launcher3/model/data/IconRequestInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/model/data/IconRequestInfo;->resourceName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 92
    :cond_0
    new-instance v1, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v1}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    iput-object v1, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 93
    iget-object v1, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v4, p0, Lcom/android/launcher3/model/data/IconRequestInfo;->packageName:Ljava/lang/String;

    iput-object v4, v1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 94
    iget-object v1, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v4, p0, Lcom/android/launcher3/model/data/IconRequestInfo;->resourceName:Ljava/lang/String;

    iput-object v4, v1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 95
    iget-object v1, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/icons/LauncherIcons;->createIconBitmap(Landroid/content/Intent$ShortcutIconResource;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v1

    .line 96
    .local v1, "iconInfo":Lcom/android/launcher3/icons/BitmapInfo;
    if-eqz v1, :cond_2

    .line 97
    iput-object v1, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    nop

    .line 115
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/icons/LauncherIcons;->close()V

    .line 98
    :cond_1
    return v3

    .line 105
    .end local v1    # "iconInfo":Lcom/android/launcher3/icons/BitmapInfo;
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    iget-object v4, p0, Lcom/android/launcher3/model/data/IconRequestInfo;->iconBlob:[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_4

    .line 106
    nop

    .line 115
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/launcher3/icons/LauncherIcons;->close()V

    .line 106
    :cond_3
    return v1

    .line 108
    :cond_4
    :try_start_2
    array-length v5, v4

    invoke-static {v4, v1, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/launcher3/icons/LauncherIcons;->createIconBitmap(Landroid/graphics/Bitmap;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v4

    iput-object v4, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    nop

    .line 115
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/launcher3/icons/LauncherIcons;->close()V

    .line 110
    :cond_5
    return v3

    .line 111
    :catch_0
    move-exception v3

    .line 112
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v4, "IconRequestInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to decode byte array for info "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 113
    nop

    .line 115
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/launcher3/icons/LauncherIcons;->close()V

    .line 113
    :cond_6
    return v1

    .line 88
    .end local v2    # "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_7

    :try_start_4
    invoke-virtual {v0}, Lcom/android/launcher3/icons/LauncherIcons;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_0
    throw v1

    .line 84
    .end local v0    # "li":Lcom/android/launcher3/icons/LauncherIcons;
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadWorkspaceIcon should only be use for a WorkspaceItemInfos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/model/data/IconRequestInfo;->itemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
