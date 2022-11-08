.class public final Lcom/android/systemui/unfold/UnfoldSharedModule_ProvideFoldStateProviderFactory;
.super Ljava/lang/Object;
.source "UnfoldSharedModule_ProvideFoldStateProviderFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/unfold/updates/FoldStateProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final deviceFoldStateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/android/systemui/unfold/UnfoldSharedModule;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/UnfoldSharedModule;Ljavax/inject/Provider;)V
    .locals 0
    .param p1, "module"    # Lcom/android/systemui/unfold/UnfoldSharedModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/unfold/UnfoldSharedModule;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;",
            ">;)V"
        }
    .end annotation

    .line 22
    .local p2, "deviceFoldStateProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/systemui/unfold/UnfoldSharedModule_ProvideFoldStateProviderFactory;->module:Lcom/android/systemui/unfold/UnfoldSharedModule;

    .line 24
    iput-object p2, p0, Lcom/android/systemui/unfold/UnfoldSharedModule_ProvideFoldStateProviderFactory;->deviceFoldStateProvider:Ljavax/inject/Provider;

    .line 25
    return-void
.end method

.method public static create(Lcom/android/systemui/unfold/UnfoldSharedModule;Ljavax/inject/Provider;)Lcom/android/systemui/unfold/UnfoldSharedModule_ProvideFoldStateProviderFactory;
    .locals 1
    .param p0, "module"    # Lcom/android/systemui/unfold/UnfoldSharedModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/unfold/UnfoldSharedModule;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;",
            ">;)",
            "Lcom/android/systemui/unfold/UnfoldSharedModule_ProvideFoldStateProviderFactory;"
        }
    .end annotation

    .line 34
    .local p1, "deviceFoldStateProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;>;"
    new-instance v0, Lcom/android/systemui/unfold/UnfoldSharedModule_ProvideFoldStateProviderFactory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/unfold/UnfoldSharedModule_ProvideFoldStateProviderFactory;-><init>(Lcom/android/systemui/unfold/UnfoldSharedModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideFoldStateProvider(Lcom/android/systemui/unfold/UnfoldSharedModule;Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;)Lcom/android/systemui/unfold/updates/FoldStateProvider;
    .locals 1
    .param p0, "instance"    # Lcom/android/systemui/unfold/UnfoldSharedModule;
    .param p1, "deviceFoldStateProvider"    # Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/systemui/unfold/UnfoldSharedModule;->provideFoldStateProvider(Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;)Lcom/android/systemui/unfold/updates/FoldStateProvider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/unfold/updates/FoldStateProvider;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/unfold/updates/FoldStateProvider;
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/android/systemui/unfold/UnfoldSharedModule_ProvideFoldStateProviderFactory;->module:Lcom/android/systemui/unfold/UnfoldSharedModule;

    iget-object v1, p0, Lcom/android/systemui/unfold/UnfoldSharedModule_ProvideFoldStateProviderFactory;->deviceFoldStateProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;

    invoke-static {v0, v1}, Lcom/android/systemui/unfold/UnfoldSharedModule_ProvideFoldStateProviderFactory;->provideFoldStateProvider(Lcom/android/systemui/unfold/UnfoldSharedModule;Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;)Lcom/android/systemui/unfold/updates/FoldStateProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/unfold/UnfoldSharedModule_ProvideFoldStateProviderFactory;->get()Lcom/android/systemui/unfold/updates/FoldStateProvider;

    move-result-object v0

    return-object v0
.end method
