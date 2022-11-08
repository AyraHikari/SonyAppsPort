.class public Lcom/android/quickstep/util/ProxyScreenStatusProvider;
.super Ljava/lang/Object;
.source "ProxyScreenStatusProvider.java"

# interfaces
.implements Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;


# static fields
.field public static final INSTANCE:Lcom/android/quickstep/util/ProxyScreenStatusProvider;


# instance fields
.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider$ScreenListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/android/quickstep/util/ProxyScreenStatusProvider;

    invoke-direct {v0}, Lcom/android/quickstep/util/ProxyScreenStatusProvider;-><init>()V

    sput-object v0, Lcom/android/quickstep/util/ProxyScreenStatusProvider;->INSTANCE:Lcom/android/quickstep/util/ProxyScreenStatusProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/ProxyScreenStatusProvider;->mListeners:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider$ScreenListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider$ScreenListener;

    .line 44
    iget-object v0, p0, Lcom/android/quickstep/util/ProxyScreenStatusProvider;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p1, Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider$ScreenListener;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/ProxyScreenStatusProvider;->addCallback(Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider$ScreenListener;)V

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/android/quickstep/util/ProxyScreenStatusProvider;->mListeners:Ljava/util/List;

    new-instance v1, Lcom/android/quickstep/util/ProxyScreenStatusProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/quickstep/util/ProxyScreenStatusProvider$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 40
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider$ScreenListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider$ScreenListener;

    .line 49
    iget-object v0, p0, Lcom/android/quickstep/util/ProxyScreenStatusProvider;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 50
    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p1, Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider$ScreenListener;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/ProxyScreenStatusProvider;->removeCallback(Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider$ScreenListener;)V

    return-void
.end method
