.class public final Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;
.super Ljava/lang/Object;
.source "FragmentStrictMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mAllowedViolations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/strictmode/Violation;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mFlags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Landroidx/fragment/app/strictmode/FragmentStrictMode$OnViolationListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;->mFlags:Ljava/util/Set;

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;->mAllowedViolations:Ljava/util/Map;

    .line 133
    return-void
.end method


# virtual methods
.method public allowViolation(Ljava/lang/Class;Ljava/lang/Class;)Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/strictmode/Violation;",
            ">;)",
            "Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;"
        }
    .end annotation

    .line 238
    .local p1, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/fragment/app/Fragment;>;"
    .local p2, "violationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/fragment/app/strictmode/Violation;>;"
    iget-object v0, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;->mAllowedViolations:Ljava/util/Map;

    .line 239
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 240
    .local v0, "violationsToBypass":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Landroidx/fragment/app/strictmode/Violation;>;>;"
    if-nez v0, :cond_0

    .line 241
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move-object v0, v1

    .line 243
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 244
    iget-object v1, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;->mAllowedViolations:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    return-object p0
.end method

.method public build()Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;
    .locals 5

    .line 256
    iget-object v0, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;->mListener:Landroidx/fragment/app/strictmode/FragmentStrictMode$OnViolationListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;->mFlags:Ljava/util/Set;

    sget-object v1, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->PENALTY_DEATH:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    invoke-virtual {p0}, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;->penaltyLog()Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;

    .line 259
    :cond_0
    new-instance v0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    iget-object v1, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;->mFlags:Ljava/util/Set;

    iget-object v2, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;->mListener:Landroidx/fragment/app/strictmode/FragmentStrictMode$OnViolationListener;

    iget-object v3, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;->mAllowedViolations:Ljava/util/Map;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;-><init>(Ljava/util/Set;Landroidx/fragment/app/strictmode/FragmentStrictMode$OnViolationListener;Ljava/util/Map;Landroidx/fragment/app/strictmode/FragmentStrictMode$1;)V

    return-object v0
.end method

.method public detectFragmentReuse()Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;
    .locals 2

    .line 173
    iget-object v0, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;->mFlags:Ljava/util/Set;

    sget-object v1, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->DETECT_FRAGMENT_REUSE:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 174
    return-object p0
.end method

.method public detectFragmentTagUsage()Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;
    .locals 2

    .line 181
    iget-object v0, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;->mFlags:Ljava/util/Set;

    sget-object v1, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->DETECT_FRAGMENT_TAG_USAGE:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 182
    return-object p0
.end method

.method public detectRetainInstanceUsage()Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;
    .locals 2

    .line 192
    iget-object v0, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;->mFlags:Ljava/util/Set;

    sget-object v1, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->DETECT_RETAIN_INSTANCE_USAGE:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 193
    return-object p0
.end method

.method public detectSetUserVisibleHint()Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;
    .locals 2

    .line 200
    iget-object v0, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;->mFlags:Ljava/util/Set;

    sget-object v1, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->DETECT_SET_USER_VISIBLE_HINT:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 201
    return-object p0
.end method

.method public detectTargetFragmentUsage()Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;
    .locals 2

    .line 211
    iget-object v0, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;->mFlags:Ljava/util/Set;

    sget-object v1, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->DETECT_TARGET_FRAGMENT_USAGE:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 212
    return-object p0
.end method

.method public detectWrongFragmentContainer()Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;
    .locals 2

    .line 222
    iget-object v0, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;->mFlags:Ljava/util/Set;

    sget-object v1, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->DETECT_WRONG_FRAGMENT_CONTAINER:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 223
    return-object p0
.end method

.method public penaltyDeath()Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;
    .locals 2

    .line 151
    iget-object v0, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;->mFlags:Ljava/util/Set;

    sget-object v1, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->PENALTY_DEATH:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 152
    return-object p0
.end method

.method public penaltyListener(Landroidx/fragment/app/strictmode/FragmentStrictMode$OnViolationListener;)Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;
    .locals 0
    .param p1, "listener"    # Landroidx/fragment/app/strictmode/FragmentStrictMode$OnViolationListener;

    .line 162
    iput-object p1, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;->mListener:Landroidx/fragment/app/strictmode/FragmentStrictMode$OnViolationListener;

    .line 163
    return-object p0
.end method

.method public penaltyLog()Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;
    .locals 2

    .line 139
    iget-object v0, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;->mFlags:Ljava/util/Set;

    sget-object v1, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->PENALTY_LOG:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 140
    return-object p0
.end method
