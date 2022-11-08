.class public final Lcom/android/systemui/flags/FlagManager;
.super Ljava/lang/Object;
.source "FlagManager.kt"

# interfaces
.implements Lcom/android/systemui/flags/FlagListenable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/flags/FlagManager$Companion;,
        Lcom/android/systemui/flags/FlagManager$SettingsObserver;,
        Lcom/android/systemui/flags/FlagManager$PerFlagListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFlagManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FlagManager.kt\ncom/android/systemui/flags/FlagManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,191:1\n1601#2,9:192\n1849#2:201\n1850#2:203\n1610#2:204\n1547#2:205\n1618#2,3:206\n1720#2,3:209\n1#3:202\n*S KotlinDebug\n*F\n+ 1 FlagManager.kt\ncom/android/systemui/flags/FlagManager\n*L\n163#1:192,9\n163#1:201\n163#1:203\n163#1:204\n171#1:205\n171#1:206,3\n183#1:209,3\n163#1:202\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u001e\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 52\u00020\u0001:\u0003567B\u0017\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\tJ\u001c\u0010\u001a\u001a\u00020\u001b2\n\u0010\u001c\u001a\u0006\u0012\u0002\u0008\u00030\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0010\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u000cH\u0002J\u001e\u0010#\u001a\u00020\u001b2\u0006\u0010\"\u001a\u00020\u000c2\u000e\u0010$\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u000bJ\u000e\u0010%\u001a\u00020\u001b2\u0006\u0010\"\u001a\u00020\u000cJ\u0016\u0010&\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u001d0(0\'J\u000e\u0010)\u001a\u00020*2\u0006\u0010\"\u001a\u00020\u000cJ\u0015\u0010+\u001a\u0004\u0018\u00010\u00152\u0006\u0010\"\u001a\u00020\u000c\u00a2\u0006\u0002\u0010,J)\u0010-\u001a\u0004\u0018\u0001H.\"\u0004\u0008\u0000\u0010.2\u0006\u0010\"\u001a\u00020\u000c2\u000c\u0010/\u001a\u0008\u0012\u0004\u0012\u0002H.00\u00a2\u0006\u0002\u00101J\u0010\u00102\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0016\u00103\u001a\u00020\u001b2\u0006\u0010\"\u001a\u00020\u000c2\u0006\u00104\u001a\u00020\u0015R\"\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\"\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u000e\"\u0004\u0008\u0017\u0010\u0010R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00068"
    }
    d2 = {
        "Lcom/android/systemui/flags/FlagManager;",
        "Lcom/android/systemui/flags/FlagListenable;",
        "context",
        "Landroid/content/Context;",
        "handler",
        "Landroid/os/Handler;",
        "(Landroid/content/Context;Landroid/os/Handler;)V",
        "settings",
        "Lcom/android/systemui/flags/FlagSettingsHelper;",
        "(Landroid/content/Context;Lcom/android/systemui/flags/FlagSettingsHelper;Landroid/os/Handler;)V",
        "clearCacheAction",
        "Ljava/util/function/Consumer;",
        "",
        "getClearCacheAction",
        "()Ljava/util/function/Consumer;",
        "setClearCacheAction",
        "(Ljava/util/function/Consumer;)V",
        "listeners",
        "",
        "Lcom/android/systemui/flags/FlagManager$PerFlagListener;",
        "onSettingsChangedAction",
        "",
        "getOnSettingsChangedAction",
        "setOnSettingsChangedAction",
        "settingsObserver",
        "Landroid/database/ContentObserver;",
        "addListener",
        "",
        "flag",
        "Lcom/android/systemui/flags/Flag;",
        "listener",
        "Lcom/android/systemui/flags/FlagListenable$Listener;",
        "createIntent",
        "Landroid/content/Intent;",
        "id",
        "dispatchListenersAndMaybeRestart",
        "restartAction",
        "eraseFlag",
        "getFlagsFuture",
        "Lcom/google/common/util/concurrent/ListenableFuture;",
        "",
        "idToSettingsKey",
        "",
        "isEnabled",
        "(I)Ljava/lang/Boolean;",
        "readFlagValue",
        "T",
        "serializer",
        "Lcom/android/systemui/flags/FlagSerializer;",
        "(ILcom/android/systemui/flags/FlagSerializer;)Ljava/lang/Object;",
        "removeListener",
        "setFlagValue",
        "enabled",
        "Companion",
        "PerFlagListener",
        "SettingsObserver",
        "frameworks__base__packages__SystemUI__shared__android_common__SystemUISharedLib"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final ACTION_GET_FLAGS:Ljava/lang/String; = "com.android.systemui.action.GET_FLAGS"

.field public static final ACTION_SET_FLAG:Ljava/lang/String; = "com.android.systemui.action.SET_FLAG"

.field public static final Companion:Lcom/android/systemui/flags/FlagManager$Companion;

.field public static final EXTRA_FLAGS:Ljava/lang/String; = "flags"

.field public static final EXTRA_ID:Ljava/lang/String; = "id"

.field public static final EXTRA_VALUE:Ljava/lang/String; = "value"

.field public static final FLAGS_PERMISSION:Ljava/lang/String; = "com.android.systemui.permission.FLAGS"

.field public static final RECEIVING_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field private static final SETTINGS_PREFIX:Ljava/lang/String; = "systemui/flags"


# instance fields
.field private clearCacheAction:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final handler:Landroid/os/Handler;

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/systemui/flags/FlagManager$PerFlagListener;",
            ">;"
        }
    .end annotation
.end field

.field private onSettingsChangedAction:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final settings:Lcom/android/systemui/flags/FlagSettingsHelper;

.field private final settingsObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/flags/FlagManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/flags/FlagManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/flags/FlagManager;->Companion:Lcom/android/systemui/flags/FlagManager$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    nop

    .line 48
    nop

    .line 49
    new-instance v0, Lcom/android/systemui/flags/FlagSettingsHelper;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "context.contentResolver"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/systemui/flags/FlagSettingsHelper;-><init>(Landroid/content/ContentResolver;)V

    .line 50
    nop

    .line 47
    invoke-direct {p0, p1, v0, p2}, Lcom/android/systemui/flags/FlagManager;-><init>(Landroid/content/Context;Lcom/android/systemui/flags/FlagSettingsHelper;Landroid/os/Handler;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/flags/FlagSettingsHelper;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settings"    # Lcom/android/systemui/flags/FlagSettingsHelper;
    .param p3, "handler"    # Landroid/os/Handler;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/systemui/flags/FlagManager;->context:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/android/systemui/flags/FlagManager;->settings:Lcom/android/systemui/flags/FlagSettingsHelper;

    .line 34
    iput-object p3, p0, Lcom/android/systemui/flags/FlagManager;->handler:Landroid/os/Handler;

    .line 59
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/android/systemui/flags/FlagManager;->listeners:Ljava/util/Set;

    .line 60
    new-instance v0, Lcom/android/systemui/flags/FlagManager$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/flags/FlagManager$SettingsObserver;-><init>(Lcom/android/systemui/flags/FlagManager;)V

    check-cast v0, Landroid/database/ContentObserver;

    iput-object v0, p0, Lcom/android/systemui/flags/FlagManager;->settingsObserver:Landroid/database/ContentObserver;

    .line 31
    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/android/systemui/flags/FlagManager;)Landroid/content/Context;
    .locals 1
    .param p0, "$this"    # Lcom/android/systemui/flags/FlagManager;

    .line 31
    iget-object v0, p0, Lcom/android/systemui/flags/FlagManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static final synthetic access$getHandler$p(Lcom/android/systemui/flags/FlagManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "$this"    # Lcom/android/systemui/flags/FlagManager;

    .line 31
    iget-object v0, p0, Lcom/android/systemui/flags/FlagManager;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private final createIntent(I)Landroid/content/Intent;
    .locals 2
    .param p1, "id"    # I

    .line 137
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.action.SET_FLAG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 141
    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/android/systemui/flags/Flag;Lcom/android/systemui/flags/FlagListenable$Listener;)V
    .locals 7
    .param p1, "flag"    # Lcom/android/systemui/flags/Flag;
    .param p2, "listener"    # Lcom/android/systemui/flags/FlagListenable$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/flags/Flag<",
            "*>;",
            "Lcom/android/systemui/flags/FlagListenable$Listener;",
            ")V"
        }
    .end annotation

    const-string v0, "flag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/android/systemui/flags/FlagManager;->listeners:Ljava/util/Set;

    monitor-enter v0

    const/4 v1, 0x0

    .line 116
    .local v1, "$i$a$-synchronized-FlagManager$addListener$1":I
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/flags/FlagManager;->listeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    .line 117
    .local v2, "registerNeeded":Z
    iget-object v3, p0, Lcom/android/systemui/flags/FlagManager;->listeners:Ljava/util/Set;

    new-instance v4, Lcom/android/systemui/flags/FlagManager$PerFlagListener;

    invoke-interface {p1}, Lcom/android/systemui/flags/Flag;->getId()I

    move-result v5

    invoke-direct {v4, v5, p2}, Lcom/android/systemui/flags/FlagManager$PerFlagListener;-><init>(ILcom/android/systemui/flags/FlagListenable$Listener;)V

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 118
    if-eqz v2, :cond_0

    .line 119
    iget-object v3, p0, Lcom/android/systemui/flags/FlagManager;->settings:Lcom/android/systemui/flags/FlagSettingsHelper;

    const-string v4, "systemui/flags"

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/systemui/flags/FlagManager;->settingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/systemui/flags/FlagSettingsHelper;->registerContentObserver(Ljava/lang/String;ZLandroid/database/ContentObserver;)V

    .line 121
    :cond_0
    nop

    .end local v1    # "$i$a$-synchronized-FlagManager$addListener$1":I
    .end local v2    # "registerNeeded":Z
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    monitor-exit v0

    .line 122
    return-void

    .line 115
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final dispatchListenersAndMaybeRestart(ILjava/util/function/Consumer;)V
    .locals 19
    .param p1, "id"    # I
    .param p2, "restartAction"    # Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 162
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    iget-object v4, v1, Lcom/android/systemui/flags/FlagManager;->listeners:Ljava/util/Set;

    monitor-enter v4

    const/4 v0, 0x0

    .line 163
    .local v0, "$i$a$-synchronized-FlagManager$dispatchListenersAndMaybeRestart$filteredListeners$1":I
    :try_start_0
    iget-object v5, v1, Lcom/android/systemui/flags/FlagManager;->listeners:Ljava/util/Set;

    check-cast v5, Ljava/lang/Iterable;

    .local v5, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 192
    .local v6, "$i$f$mapNotNull":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/Collection;

    .local v7, "destination$iv$iv":Ljava/util/Collection;
    move-object v8, v5

    .local v8, "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 200
    .local v9, "$i$f$mapNotNullTo":I
    move-object v10, v8

    .local v10, "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v11, 0x0

    .line 201
    .local v11, "$i$f$forEach":I
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .local v13, "element$iv$iv$iv":Ljava/lang/Object;
    move-object v14, v13

    .local v14, "element$iv$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 200
    .local v15, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    move-object/from16 v16, v14

    check-cast v16, Lcom/android/systemui/flags/FlagManager$PerFlagListener;

    .local v16, "it":Lcom/android/systemui/flags/FlagManager$PerFlagListener;
    const/16 v17, 0x0

    .line 163
    .local v17, "$i$a$-mapNotNull-FlagManager$dispatchListenersAndMaybeRestart$filteredListeners$1$1":I
    move/from16 v18, v0

    .end local v0    # "$i$a$-synchronized-FlagManager$dispatchListenersAndMaybeRestart$filteredListeners$1":I
    .local v18, "$i$a$-synchronized-FlagManager$dispatchListenersAndMaybeRestart$filteredListeners$1":I
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/flags/FlagManager$PerFlagListener;->getId()I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/flags/FlagManager$PerFlagListener;->getListener()Lcom/android/systemui/flags/FlagListenable$Listener;

    move-result-object v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .end local v16    # "it":Lcom/android/systemui/flags/FlagManager$PerFlagListener;
    .end local v17    # "$i$a$-mapNotNull-FlagManager$dispatchListenersAndMaybeRestart$filteredListeners$1$1":I
    :goto_1
    if-nez v0, :cond_1

    goto :goto_2

    .line 202
    .local v0, "it$iv$iv":Ljava/lang/Object;
    :cond_1
    const/16 v16, 0x0

    .line 200
    .local v16, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    invoke-interface {v7, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .end local v0    # "it$iv$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    :goto_2
    move/from16 v0, v18

    .end local v13    # "element$iv$iv$iv":Ljava/lang/Object;
    .end local v14    # "element$iv$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    goto :goto_0

    .line 203
    .end local v18    # "$i$a$-synchronized-FlagManager$dispatchListenersAndMaybeRestart$filteredListeners$1":I
    .local v0, "$i$a$-synchronized-FlagManager$dispatchListenersAndMaybeRestart$filteredListeners$1":I
    :cond_2
    move/from16 v18, v0

    .line 204
    .end local v0    # "$i$a$-synchronized-FlagManager$dispatchListenersAndMaybeRestart$filteredListeners$1":I
    .end local v10    # "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    .end local v11    # "$i$f$forEach":I
    .restart local v18    # "$i$a$-synchronized-FlagManager$dispatchListenersAndMaybeRestart$filteredListeners$1":I
    nop

    .end local v7    # "destination$iv$iv":Ljava/util/Collection;
    .end local v8    # "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    .end local v9    # "$i$f$mapNotNullTo":I
    move-object v0, v7

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    nop

    .line 163
    .end local v5    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$mapNotNull":I
    nop

    .line 162
    .end local v18    # "$i$a$-synchronized-FlagManager$dispatchListenersAndMaybeRestart$filteredListeners$1":I
    monitor-exit v4

    .line 166
    .local v0, "filteredListeners":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    .line 167
    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 168
    :goto_3
    return-void

    .line 171
    :cond_4
    move-object v4, v0

    check-cast v4, Ljava/lang/Iterable;

    .local v4, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 205
    .local v6, "$i$f$map":I
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v4, v8}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v7, Ljava/util/Collection;

    .restart local v7    # "destination$iv$iv":Ljava/util/Collection;
    move-object v8, v4

    .local v8, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 206
    .local v9, "$i$f$mapTo":I
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 207
    .local v11, "item$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Lcom/android/systemui/flags/FlagListenable$Listener;

    .local v12, "listener":Lcom/android/systemui/flags/FlagListenable$Listener;
    const/4 v13, 0x0

    .line 172
    .local v13, "$i$a$-map-FlagManager$dispatchListenersAndMaybeRestart$suppressRestartList$1":I
    new-instance v14, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 173
    .local v14, "didRequestNoRestart":Lkotlin/jvm/internal/Ref$BooleanRef;
    new-instance v15, Lcom/android/systemui/flags/FlagManager$dispatchListenersAndMaybeRestart$suppressRestartList$1$event$1;

    invoke-direct {v15, v2, v14}, Lcom/android/systemui/flags/FlagManager$dispatchListenersAndMaybeRestart$suppressRestartList$1$event$1;-><init>(ILkotlin/jvm/internal/Ref$BooleanRef;)V

    .line 179
    .local v15, "event":Lcom/android/systemui/flags/FlagManager$dispatchListenersAndMaybeRestart$suppressRestartList$1$event$1;
    move-object v5, v15

    check-cast v5, Lcom/android/systemui/flags/FlagListenable$FlagEvent;

    invoke-interface {v12, v5}, Lcom/android/systemui/flags/FlagListenable$Listener;->onFlagChanged(Lcom/android/systemui/flags/FlagListenable$FlagEvent;)V

    .line 180
    iget-boolean v5, v14, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .end local v12    # "listener":Lcom/android/systemui/flags/FlagListenable$Listener;
    .end local v13    # "$i$a$-map-FlagManager$dispatchListenersAndMaybeRestart$suppressRestartList$1":I
    .end local v14    # "didRequestNoRestart":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v15    # "event":Lcom/android/systemui/flags/FlagManager$dispatchListenersAndMaybeRestart$suppressRestartList$1$event$1;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    goto :goto_4

    .line 208
    .end local v11    # "item$iv$iv":Ljava/lang/Object;
    :cond_5
    nop

    .end local v7    # "destination$iv$iv":Ljava/util/Collection;
    .end local v8    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v9    # "$i$f$mapTo":I
    move-object v5, v7

    check-cast v5, Ljava/util/List;

    .line 205
    nop

    .line 171
    .end local v4    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$map":I
    move-object v4, v5

    .line 183
    .local v4, "suppressRestartList":Ljava/util/List;
    move-object v5, v4

    check-cast v5, Ljava/lang/Iterable;

    .local v5, "$this$all$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 209
    .local v6, "$i$f$all":I
    instance-of v7, v5, Ljava/util/Collection;

    const/4 v8, 0x1

    if-eqz v7, :cond_6

    move-object v7, v5

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6

    move v5, v8

    goto :goto_5

    .line 210
    :cond_6
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .local v9, "element$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .local v10, "it":Z
    const/4 v11, 0x0

    .line 183
    .local v11, "$i$a$-all-FlagManager$dispatchListenersAndMaybeRestart$suppressRestart$1":I
    nop

    .end local v10    # "it":Z
    .end local v11    # "$i$a$-all-FlagManager$dispatchListenersAndMaybeRestart$suppressRestart$1":I
    if-nez v10, :cond_7

    const/4 v5, 0x0

    goto :goto_5

    .line 211
    .end local v9    # "element$iv":Ljava/lang/Object;
    :cond_8
    move v5, v8

    .line 183
    .end local v5    # "$this$all$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$all":I
    :goto_5
    nop

    .line 184
    .local v5, "suppressRestart":Z
    if-nez v3, :cond_9

    goto :goto_6

    :cond_9
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 185
    :goto_6
    return-void

    .line 162
    .end local v0    # "filteredListeners":Ljava/util/List;
    .end local v4    # "suppressRestartList":Ljava/util/List;
    .end local v5    # "suppressRestart":Z
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public final eraseFlag(I)V
    .locals 2
    .param p1, "id"    # I

    .line 103
    invoke-direct {p0, p1}, Lcom/android/systemui/flags/FlagManager;->createIntent(I)Landroid/content/Intent;

    move-result-object v0

    .line 105
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/flags/FlagManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 106
    return-void
.end method

.method public final getClearCacheAction()Ljava/util/function/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/android/systemui/flags/FlagManager;->clearCacheAction:Ljava/util/function/Consumer;

    return-object v0
.end method

.method public final getFlagsFuture()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/util/Collection<",
            "Lcom/android/systemui/flags/Flag<",
            "*>;>;>;"
        }
    .end annotation

    .line 63
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.action.GET_FLAGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 64
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    new-instance v1, Lcom/android/systemui/flags/FlagManager$getFlagsFuture$1;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/flags/FlagManager$getFlagsFuture$1;-><init>(Lcom/android/systemui/flags/FlagManager;Landroid/content/Intent;)V

    check-cast v1, Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;

    invoke-static {v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    const-string v2, "fun getFlagsFuture(): Li\u2026ingFlags\"\n        }\n    }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public final getOnSettingsChangedAction()Ljava/util/function/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/android/systemui/flags/FlagManager;->onSettingsChangedAction:Ljava/util/function/Consumer;

    return-object v0
.end method

.method public final idToSettingsKey(I)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I

    .line 145
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "systemui/flags/"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isEnabled(I)Ljava/lang/Boolean;
    .locals 1
    .param p1, "id"    # I

    .line 89
    sget-object v0, Lcom/android/systemui/flags/BooleanFlagSerializer;->INSTANCE:Lcom/android/systemui/flags/BooleanFlagSerializer;

    check-cast v0, Lcom/android/systemui/flags/FlagSerializer;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/flags/FlagManager;->readFlagValue(ILcom/android/systemui/flags/FlagSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public final readFlagValue(ILcom/android/systemui/flags/FlagSerializer;)Ljava/lang/Object;
    .locals 2
    .param p1, "id"    # I
    .param p2, "serializer"    # Lcom/android/systemui/flags/FlagSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/android/systemui/flags/FlagSerializer<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "serializer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/android/systemui/flags/FlagManager;->settings:Lcom/android/systemui/flags/FlagSettingsHelper;

    invoke-virtual {p0, p1}, Lcom/android/systemui/flags/FlagManager;->idToSettingsKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/flags/FlagSettingsHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "data":Ljava/lang/String;
    invoke-virtual {p2, v0}, Lcom/android/systemui/flags/FlagSerializer;->fromSettingsData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public removeListener(Lcom/android/systemui/flags/FlagListenable$Listener;)V
    .locals 4
    .param p1, "listener"    # Lcom/android/systemui/flags/FlagListenable$Listener;

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/android/systemui/flags/FlagManager;->listeners:Ljava/util/Set;

    monitor-enter v0

    const/4 v1, 0x0

    .line 126
    .local v1, "$i$a$-synchronized-FlagManager$removeListener$1":I
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/flags/FlagManager;->listeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 127
    nop

    .end local v1    # "$i$a$-synchronized-FlagManager$removeListener$1":I
    monitor-exit v0

    return-void

    .line 129
    .restart local v1    # "$i$a$-synchronized-FlagManager$removeListener$1":I
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/flags/FlagManager;->listeners:Ljava/util/Set;

    new-instance v3, Lcom/android/systemui/flags/FlagManager$removeListener$1$1;

    invoke-direct {v3, p1}, Lcom/android/systemui/flags/FlagManager$removeListener$1$1;-><init>(Lcom/android/systemui/flags/FlagListenable$Listener;)V

    check-cast v3, Ljava/util/function/Predicate;

    invoke-interface {v2, v3}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 130
    iget-object v2, p0, Lcom/android/systemui/flags/FlagManager;->listeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    iget-object v2, p0, Lcom/android/systemui/flags/FlagManager;->settings:Lcom/android/systemui/flags/FlagSettingsHelper;

    iget-object v3, p0, Lcom/android/systemui/flags/FlagManager;->settingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Lcom/android/systemui/flags/FlagSettingsHelper;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 133
    :cond_1
    nop

    .end local v1    # "$i$a$-synchronized-FlagManager$removeListener$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    monitor-exit v0

    .line 134
    return-void

    .line 125
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final setClearCacheAction(Ljava/util/function/Consumer;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/android/systemui/flags/FlagManager;->clearCacheAction:Ljava/util/function/Consumer;

    return-void
.end method

.method public final setFlagValue(IZ)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "enabled"    # Z

    .line 96
    invoke-direct {p0, p1}, Lcom/android/systemui/flags/FlagManager;->createIntent(I)Landroid/content/Intent;

    move-result-object v0

    .line 97
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 99
    iget-object v1, p0, Lcom/android/systemui/flags/FlagManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 100
    return-void
.end method

.method public final setOnSettingsChangedAction(Ljava/util/function/Consumer;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/android/systemui/flags/FlagManager;->onSettingsChangedAction:Ljava/util/function/Consumer;

    return-void
.end method
