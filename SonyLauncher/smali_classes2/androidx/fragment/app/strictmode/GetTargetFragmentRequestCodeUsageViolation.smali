.class public final Landroidx/fragment/app/strictmode/GetTargetFragmentRequestCodeUsageViolation;
.super Landroidx/fragment/app/strictmode/TargetFragmentUsageViolation;
.source "GetTargetFragmentRequestCodeUsageViolation.java"


# direct methods
.method constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 26
    invoke-direct {p0, p1}, Landroidx/fragment/app/strictmode/TargetFragmentUsageViolation;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 27
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempting to get target request code from fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/strictmode/GetTargetFragmentRequestCodeUsageViolation;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
