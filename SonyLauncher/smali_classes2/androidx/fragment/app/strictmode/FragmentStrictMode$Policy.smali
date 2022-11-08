.class public final Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;
.super Ljava/lang/Object;
.source "FragmentStrictMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/strictmode/FragmentStrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Policy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;
    }
.end annotation


# static fields
.field public static final LAX:Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;


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

.field private final mListener:Landroidx/fragment/app/strictmode/FragmentStrictMode$OnViolationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 96
    new-instance v0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;-><init>(Ljava/util/Set;Landroidx/fragment/app/strictmode/FragmentStrictMode$OnViolationListener;Ljava/util/Map;)V

    sput-object v0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;->LAX:Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    return-void
.end method

.method private constructor <init>(Ljava/util/Set;Landroidx/fragment/app/strictmode/FragmentStrictMode$OnViolationListener;Ljava/util/Map;)V
    .locals 6
    .param p2, "listener"    # Landroidx/fragment/app/strictmode/FragmentStrictMode$OnViolationListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;",
            ">;",
            "Landroidx/fragment/app/strictmode/FragmentStrictMode$OnViolationListener;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/strictmode/Violation;",
            ">;>;>;)V"
        }
    .end annotation

    .line 102
    .local p1, "flags":Ljava/util/Set;, "Ljava/util/Set<Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;>;"
    .local p3, "allowedViolations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+Landroidx/fragment/app/Fragment;>;Ljava/util/Set<Ljava/lang/Class<+Landroidx/fragment/app/strictmode/Violation;>;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;->mFlags:Ljava/util/Set;

    .line 104
    iput-object p2, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;->mListener:Landroidx/fragment/app/strictmode/FragmentStrictMode$OnViolationListener;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 109
    .local v0, "newAllowedViolationsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+Landroidx/fragment/app/Fragment;>;Ljava/util/Set<Ljava/lang/Class<+Landroidx/fragment/app/strictmode/Violation;>;>;>;"
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 110
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<+Landroidx/fragment/app/Fragment;>;Ljava/util/Set<Ljava/lang/Class<+Landroidx/fragment/app/strictmode/Violation;>;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    new-instance v4, Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<+Landroidx/fragment/app/Fragment;>;Ljava/util/Set<Ljava/lang/Class<+Landroidx/fragment/app/strictmode/Violation;>;>;>;"
    goto :goto_0

    .line 112
    :cond_0
    iput-object v0, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;->mAllowedViolations:Ljava/util/Map;

    .line 113
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Set;Landroidx/fragment/app/strictmode/FragmentStrictMode$OnViolationListener;Ljava/util/Map;Landroidx/fragment/app/strictmode/FragmentStrictMode$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Set;
    .param p2, "x1"    # Landroidx/fragment/app/strictmode/FragmentStrictMode$OnViolationListener;
    .param p3, "x2"    # Ljava/util/Map;
    .param p4, "x3"    # Landroidx/fragment/app/strictmode/FragmentStrictMode$1;

    .line 88
    invoke-direct {p0, p1, p2, p3}, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;-><init>(Ljava/util/Set;Landroidx/fragment/app/strictmode/FragmentStrictMode$OnViolationListener;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$100(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    .line 88
    iget-object v0, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;->mFlags:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    .line 88
    iget-object v0, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;->mAllowedViolations:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;)Landroidx/fragment/app/strictmode/FragmentStrictMode$OnViolationListener;
    .locals 1
    .param p0, "x0"    # Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    .line 88
    iget-object v0, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;->mListener:Landroidx/fragment/app/strictmode/FragmentStrictMode$OnViolationListener;

    return-object v0
.end method
