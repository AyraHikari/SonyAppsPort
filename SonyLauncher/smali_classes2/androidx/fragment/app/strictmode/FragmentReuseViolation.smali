.class public final Landroidx/fragment/app/strictmode/FragmentReuseViolation;
.super Landroidx/fragment/app/strictmode/Violation;
.source "FragmentReuseViolation.java"


# instance fields
.field private final mPreviousWho:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p2, "previousWho"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0, p1}, Landroidx/fragment/app/strictmode/Violation;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 30
    iput-object p2, p0, Landroidx/fragment/app/strictmode/FragmentReuseViolation;->mPreviousWho:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempting to reuse fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/strictmode/FragmentReuseViolation;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with previous ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/strictmode/FragmentReuseViolation;->mPreviousWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreviousFragmentId()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Landroidx/fragment/app/strictmode/FragmentReuseViolation;->mPreviousWho:Ljava/lang/String;

    return-object v0
.end method
