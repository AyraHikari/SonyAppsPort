.class public final Lcom/android/systemui/unfold/UnfoldSharedModule_UnfoldTransitionProgressProviderFactory;
.super Ljava/lang/Object;
.source "UnfoldSharedModule_UnfoldTransitionProgressProviderFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/util/Optional<",
        "Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final configProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final foldStateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/unfold/updates/FoldStateProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/android/systemui/unfold/UnfoldSharedModule;

.field private final scaleAwareProviderFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final tracingListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/UnfoldSharedModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .param p1, "module"    # Lcom/android/systemui/unfold/UnfoldSharedModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/unfold/UnfoldSharedModule;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider$Factory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/unfold/updates/FoldStateProvider;",
            ">;)V"
        }
    .end annotation

    .line 34
    .local p2, "configProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;>;"
    .local p3, "scaleAwareProviderFactoryProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider$Factory;>;"
    .local p4, "tracingListenerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener;>;"
    .local p5, "foldStateProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/android/systemui/unfold/updates/FoldStateProvider;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/systemui/unfold/UnfoldSharedModule_UnfoldTransitionProgressProviderFactory;->module:Lcom/android/systemui/unfold/UnfoldSharedModule;

    .line 36
    iput-object p2, p0, Lcom/android/systemui/unfold/UnfoldSharedModule_UnfoldTransitionProgressProviderFactory;->configProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p3, p0, Lcom/android/systemui/unfold/UnfoldSharedModule_UnfoldTransitionProgressProviderFactory;->scaleAwareProviderFactoryProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p4, p0, Lcom/android/systemui/unfold/UnfoldSharedModule_UnfoldTransitionProgressProviderFactory;->tracingListenerProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p5, p0, Lcom/android/systemui/unfold/UnfoldSharedModule_UnfoldTransitionProgressProviderFactory;->foldStateProvider:Ljavax/inject/Provider;

    .line 40
    return-void
.end method

.method public static create(Lcom/android/systemui/unfold/UnfoldSharedModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/unfold/UnfoldSharedModule_UnfoldTransitionProgressProviderFactory;
    .locals 7
    .param p0, "module"    # Lcom/android/systemui/unfold/UnfoldSharedModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/unfold/UnfoldSharedModule;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider$Factory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/unfold/updates/FoldStateProvider;",
            ">;)",
            "Lcom/android/systemui/unfold/UnfoldSharedModule_UnfoldTransitionProgressProviderFactory;"
        }
    .end annotation

    .line 52
    .local p1, "configProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;>;"
    .local p2, "scaleAwareProviderFactoryProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider$Factory;>;"
    .local p3, "tracingListenerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener;>;"
    .local p4, "foldStateProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/android/systemui/unfold/updates/FoldStateProvider;>;"
    new-instance v6, Lcom/android/systemui/unfold/UnfoldSharedModule_UnfoldTransitionProgressProviderFactory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/unfold/UnfoldSharedModule_UnfoldTransitionProgressProviderFactory;-><init>(Lcom/android/systemui/unfold/UnfoldSharedModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static unfoldTransitionProgressProvider(Lcom/android/systemui/unfold/UnfoldSharedModule;Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider$Factory;Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener;Lcom/android/systemui/unfold/updates/FoldStateProvider;)Ljava/util/Optional;
    .locals 1
    .param p0, "instance"    # Lcom/android/systemui/unfold/UnfoldSharedModule;
    .param p1, "config"    # Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;
    .param p2, "scaleAwareProviderFactory"    # Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider$Factory;
    .param p3, "tracingListener"    # Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener;
    .param p4, "foldStateProvider"    # Lcom/android/systemui/unfold/updates/FoldStateProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/unfold/UnfoldSharedModule;",
            "Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;",
            "Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider$Factory;",
            "Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener;",
            "Lcom/android/systemui/unfold/updates/FoldStateProvider;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;",
            ">;"
        }
    .end annotation

    .line 59
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/unfold/UnfoldSharedModule;->unfoldTransitionProgressProvider(Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider$Factory;Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener;Lcom/android/systemui/unfold/updates/FoldStateProvider;)Ljava/util/Optional;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Optional;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/unfold/UnfoldSharedModule_UnfoldTransitionProgressProviderFactory;->get()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/Optional;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/android/systemui/unfold/UnfoldSharedModule_UnfoldTransitionProgressProviderFactory;->module:Lcom/android/systemui/unfold/UnfoldSharedModule;

    iget-object v1, p0, Lcom/android/systemui/unfold/UnfoldSharedModule_UnfoldTransitionProgressProviderFactory;->configProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;

    iget-object v2, p0, Lcom/android/systemui/unfold/UnfoldSharedModule_UnfoldTransitionProgressProviderFactory;->scaleAwareProviderFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider$Factory;

    iget-object v3, p0, Lcom/android/systemui/unfold/UnfoldSharedModule_UnfoldTransitionProgressProviderFactory;->tracingListenerProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener;

    iget-object v4, p0, Lcom/android/systemui/unfold/UnfoldSharedModule_UnfoldTransitionProgressProviderFactory;->foldStateProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/unfold/updates/FoldStateProvider;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/systemui/unfold/UnfoldSharedModule_UnfoldTransitionProgressProviderFactory;->unfoldTransitionProgressProvider(Lcom/android/systemui/unfold/UnfoldSharedModule;Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider$Factory;Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener;Lcom/android/systemui/unfold/updates/FoldStateProvider;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
