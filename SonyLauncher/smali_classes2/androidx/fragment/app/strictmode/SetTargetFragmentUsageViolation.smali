.class public final Landroidx/fragment/app/strictmode/SetTargetFragmentUsageViolation;
.super Landroidx/fragment/app/strictmode/TargetFragmentUsageViolation;
.source "SetTargetFragmentUsageViolation.java"


# instance fields
.field private final mRequestCode:I

.field private final mTargetFragment:Landroidx/fragment/app/Fragment;


# direct methods
.method constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;I)V
    .locals 0
    .param p1, "violatingFragment"    # Landroidx/fragment/app/Fragment;
    .param p2, "targetFragment"    # Landroidx/fragment/app/Fragment;
    .param p3, "requestCode"    # I

    .line 32
    invoke-direct {p0, p1}, Landroidx/fragment/app/strictmode/TargetFragmentUsageViolation;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 33
    iput-object p2, p0, Landroidx/fragment/app/strictmode/SetTargetFragmentUsageViolation;->mTargetFragment:Landroidx/fragment/app/Fragment;

    .line 34
    iput p3, p0, Landroidx/fragment/app/strictmode/SetTargetFragmentUsageViolation;->mRequestCode:I

    .line 35
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempting to set target fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/strictmode/SetTargetFragmentUsageViolation;->mTargetFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with request code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/fragment/app/strictmode/SetTargetFragmentUsageViolation;->mRequestCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/strictmode/SetTargetFragmentUsageViolation;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestCode()I
    .locals 1

    .line 49
    iget v0, p0, Landroidx/fragment/app/strictmode/SetTargetFragmentUsageViolation;->mRequestCode:I

    return v0
.end method

.method public getTargetFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 42
    iget-object v0, p0, Landroidx/fragment/app/strictmode/SetTargetFragmentUsageViolation;->mTargetFragment:Landroidx/fragment/app/Fragment;

    return-object v0
.end method
