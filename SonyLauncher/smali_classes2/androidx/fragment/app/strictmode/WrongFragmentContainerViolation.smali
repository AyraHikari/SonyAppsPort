.class public final Landroidx/fragment/app/strictmode/WrongFragmentContainerViolation;
.super Landroidx/fragment/app/strictmode/Violation;
.source "WrongFragmentContainerViolation.java"


# instance fields
.field private final mContainer:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroidx/fragment/app/Fragment;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .line 30
    invoke-direct {p0, p1}, Landroidx/fragment/app/strictmode/Violation;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 31
    iput-object p2, p0, Landroidx/fragment/app/strictmode/WrongFragmentContainerViolation;->mContainer:Landroid/view/ViewGroup;

    .line 32
    return-void
.end method


# virtual methods
.method public getContainer()Landroid/view/ViewGroup;
    .locals 1

    .line 40
    iget-object v0, p0, Landroidx/fragment/app/strictmode/WrongFragmentContainerViolation;->mContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempting to add fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/strictmode/WrongFragmentContainerViolation;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to container "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/strictmode/WrongFragmentContainerViolation;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " which is not a FragmentContainerView"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
