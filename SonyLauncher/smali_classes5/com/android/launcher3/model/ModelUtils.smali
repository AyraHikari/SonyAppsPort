.class public Lcom/android/launcher3/model/ModelUtils;
.super Ljava/lang/Object;
.source "ModelUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ModelUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static filterCurrentWorkspaceItems(Lcom/android/launcher3/util/IntSet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 5
    .param p0, "currentScreenIds"    # Lcom/android/launcher3/util/IntSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">(",
            "Lcom/android/launcher3/util/IntSet;",
            "Ljava/util/ArrayList<",
            "TT;>;",
            "Ljava/util/ArrayList<",
            "TT;>;",
            "Ljava/util/ArrayList<",
            "TT;>;)V"
        }
    .end annotation

    .line 59
    .local p1, "allWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p2, "currentScreenItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p3, "otherScreenItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    new-instance v0, Lcom/android/launcher3/model/ModelUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/model/ModelUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 63
    new-instance v0, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntSet;-><init>()V

    .line 64
    .local v0, "itemsOnScreen":Lcom/android/launcher3/util/IntSet;
    new-instance v1, Lcom/android/launcher3/model/ModelUtils$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/launcher3/model/ModelUtils$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 66
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    .line 67
    .local v2, "info":Lcom/android/launcher3/model/data/ItemInfo;, "TT;"
    iget v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v4, -0x64

    if-ne v3, v4, :cond_2

    .line 68
    sget-boolean v3, Lcom/android/launcher3/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v3, :cond_0

    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "filterCurrentWorkspaceItems: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "b/200572078"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    iget v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {p0, v3}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 73
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v0, v3}, Lcom/android/launcher3/util/IntSet;->add(I)V

    goto :goto_1

    .line 76
    :cond_1
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 78
    :cond_2
    iget v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v4, -0x65

    if-ne v3, v4, :cond_3

    .line 79
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    iget v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v0, v3}, Lcom/android/launcher3/util/IntSet;->add(I)V

    goto :goto_1

    .line 82
    :cond_3
    iget v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-virtual {v0, v3}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 83
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    iget v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v0, v3}, Lcom/android/launcher3/util/IntSet;->add(I)V

    goto :goto_1

    .line 86
    :cond_4
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    .end local v2    # "info":Lcom/android/launcher3/model/data/ItemInfo;, "TT;"
    :goto_1
    goto :goto_0

    .line 90
    :cond_5
    return-void
.end method

.method public static fromLegacyShortcutIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Landroid/content/Intent;

    .line 111
    const-class v0, Landroid/content/Intent;

    const-string v1, "android.intent.extra.shortcut.INTENT"

    invoke-static {p1, v1, v0}, Lcom/android/launcher3/Utilities;->isValidExtraType(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v0

    const-string v2, "Invalid install shortcut intent"

    const/4 v3, 0x0

    const-string v4, "ModelUtils"

    if-eqz v0, :cond_8

    const-class v0, Landroid/content/Intent$ShortcutIconResource;

    .line 112
    const-string v5, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-static {p1, v5, v0}, Lcom/android/launcher3/Utilities;->isValidExtraType(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-class v0, Landroid/graphics/Bitmap;

    .line 114
    const-string v6, "android.intent.extra.shortcut.ICON"

    invoke-static {p1, v6, v0}, Lcom/android/launcher3/Utilities;->isValidExtraType(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 120
    :cond_0
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 121
    .local v0, "launchIntent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "label":Ljava/lang/String;
    if-eqz v0, :cond_7

    if-nez v1, :cond_1

    goto :goto_2

    .line 127
    :cond_1
    new-instance v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v2}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>()V

    .line 128
    .local v2, "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    iput-object v7, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->user:Landroid/os/UserHandle;

    .line 130
    const/4 v7, 0x0

    .line 131
    .local v7, "iconInfo":Lcom/android/launcher3/icons/BitmapInfo;
    invoke-static {p0}, Lcom/android/launcher3/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherIcons;

    move-result-object v8

    .line 132
    .local v8, "li":Lcom/android/launcher3/icons/LauncherIcons;
    :try_start_0
    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    .line 133
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_2

    .line 134
    invoke-virtual {v8, v6}, Lcom/android/launcher3/icons/LauncherIcons;->createIconBitmap(Landroid/graphics/Bitmap;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v5

    move-object v7, v5

    goto :goto_0

    .line 136
    :cond_2
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/content/Intent$ShortcutIconResource;

    iput-object v5, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 137
    iget-object v5, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v5, :cond_3

    .line 138
    iget-object v5, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    invoke-virtual {v8, v5}, Lcom/android/launcher3/icons/LauncherIcons;->createIconBitmap(Landroid/content/Intent$ShortcutIconResource;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v5

    .line 141
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    :goto_0
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lcom/android/launcher3/icons/LauncherIcons;->close()V

    .line 143
    .end local v8    # "li":Lcom/android/launcher3/icons/LauncherIcons;
    :cond_4
    if-nez v7, :cond_5

    .line 144
    const-string v5, "Invalid icon by the app"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-object v3

    .line 147
    :cond_5
    iput-object v7, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    .line 148
    invoke-static {v1}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->title:Ljava/lang/CharSequence;

    iput-object v3, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 149
    iput-object v0, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    .line 150
    return-object v2

    .line 131
    .restart local v8    # "li":Lcom/android/launcher3/icons/LauncherIcons;
    :catchall_0
    move-exception v3

    if-eqz v8, :cond_6

    :try_start_1
    invoke-virtual {v8}, Lcom/android/launcher3/icons/LauncherIcons;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    throw v3

    .line 123
    .end local v2    # "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .end local v7    # "iconInfo":Lcom/android/launcher3/icons/BitmapInfo;
    .end local v8    # "li":Lcom/android/launcher3/icons/LauncherIcons;
    :cond_7
    :goto_2
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-object v3

    .line 116
    .end local v0    # "launchIntent":Landroid/content/Intent;
    .end local v1    # "label":Ljava/lang/String;
    :cond_8
    :goto_3
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-object v3
.end method

.method public static getMissingHotseatRanks(Ljava/util/List;I)Lcom/android/launcher3/util/IntArray;
    .locals 4
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;I)",
            "Lcom/android/launcher3/util/IntArray;"
        }
    .end annotation

    .line 96
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    new-instance v0, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntSet;-><init>()V

    .line 97
    .local v0, "seen":Lcom/android/launcher3/util/IntSet;
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/model/ModelUtils$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/android/launcher3/model/ModelUtils$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/model/ModelUtils$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lcom/android/launcher3/model/ModelUtils$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/util/IntSet;)V

    .line 99
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 100
    new-instance v1, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v1, p1}, Lcom/android/launcher3/util/IntArray;-><init>(I)V

    .line 101
    .local v1, "result":Lcom/android/launcher3/util/IntArray;
    const/4 v2, 0x0

    invoke-static {v2, p1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/model/ModelUtils$$ExternalSyntheticLambda4;

    invoke-direct {v3, v0}, Lcom/android/launcher3/model/ModelUtils$$ExternalSyntheticLambda4;-><init>(Lcom/android/launcher3/util/IntSet;)V

    invoke-interface {v2, v3}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object v2

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/launcher3/model/ModelUtils$$ExternalSyntheticLambda5;

    invoke-direct {v3, v1}, Lcom/android/launcher3/model/ModelUtils$$ExternalSyntheticLambda5;-><init>(Lcom/android/launcher3/util/IntArray;)V

    invoke-interface {v2, v3}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 102
    return-object v1
.end method

.method static synthetic lambda$filterCurrentWorkspaceItems$0(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/data/ItemInfo;)I
    .locals 2
    .param p0, "lhs"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p1, "rhs"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 65
    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$getMissingHotseatRanks$1(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 2
    .param p0, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 98
    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v1, -0x65

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$getMissingHotseatRanks$2(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 1
    .param p0, "seen"    # Lcom/android/launcher3/util/IntSet;
    .param p1, "i"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 99
    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/IntSet;->add(I)V

    return-void
.end method

.method static synthetic lambda$getMissingHotseatRanks$3(Lcom/android/launcher3/util/IntSet;I)Z
    .locals 1
    .param p0, "seen"    # Lcom/android/launcher3/util/IntSet;
    .param p1, "i"    # I

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
