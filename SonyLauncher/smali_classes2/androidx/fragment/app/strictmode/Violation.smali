.class public abstract Landroidx/fragment/app/strictmode/Violation;
.super Ljava/lang/RuntimeException;
.source "Violation.java"


# instance fields
.field final mFragment:Landroidx/fragment/app/Fragment;


# direct methods
.method constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 28
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 29
    iput-object p1, p0, Landroidx/fragment/app/strictmode/Violation;->mFragment:Landroidx/fragment/app/Fragment;

    .line 30
    return-void
.end method


# virtual methods
.method public getFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 37
    iget-object v0, p0, Landroidx/fragment/app/strictmode/Violation;->mFragment:Landroidx/fragment/app/Fragment;

    return-object v0
.end method
