.class public final Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider_Factory;
.super Ljava/lang/Object;
.source "ScaleAwareTransitionProgressProvider_Factory.java"


# instance fields
.field private final contentResolverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/ContentResolver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/ContentResolver;",
            ">;)V"
        }
    .end annotation

    .line 18
    .local p1, "contentResolverProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Landroid/content/ContentResolver;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider_Factory;->contentResolverProvider:Ljavax/inject/Provider;

    .line 20
    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/ContentResolver;",
            ">;)",
            "Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider_Factory;"
        }
    .end annotation

    .line 29
    .local p0, "contentResolverProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Landroid/content/ContentResolver;>;"
    new-instance v0, Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider_Factory;

    invoke-direct {v0, p0}, Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;Landroid/content/ContentResolver;)Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider;
    .locals 1
    .param p0, "progressProviderToWrap"    # Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .line 34
    new-instance v0, Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider;-><init>(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;Landroid/content/ContentResolver;)V

    return-object v0
.end method


# virtual methods
.method public get(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;)Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider;
    .locals 1
    .param p1, "progressProviderToWrap"    # Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    .line 24
    iget-object v0, p0, Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider_Factory;->contentResolverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    invoke-static {p1, v0}, Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider_Factory;->newInstance(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;Landroid/content/ContentResolver;)Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider;

    move-result-object v0

    return-object v0
.end method
