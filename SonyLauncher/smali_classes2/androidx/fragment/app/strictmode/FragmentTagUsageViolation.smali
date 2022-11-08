.class public final Landroidx/fragment/app/strictmode/FragmentTagUsageViolation;
.super Landroidx/fragment/app/strictmode/Violation;
.source "FragmentTagUsageViolation.java"


# instance fields
.field private final mContainer:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroidx/fragment/app/Fragment;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .line 32
    invoke-direct {p0, p1}, Landroidx/fragment/app/strictmode/Violation;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 33
    iput-object p2, p0, Landroidx/fragment/app/strictmode/FragmentTagUsageViolation;->mContainer:Landroid/view/ViewGroup;

    .line 34
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempting to use <fragment> tag to add fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/strictmode/FragmentTagUsageViolation;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to container "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/strictmode/FragmentTagUsageViolation;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParentContainer()Landroid/view/ViewGroup;
    .locals 1

    .line 42
    iget-object v0, p0, Landroidx/fragment/app/strictmode/FragmentTagUsageViolation;->mContainer:Landroid/view/ViewGroup;

    return-object v0
.end method
