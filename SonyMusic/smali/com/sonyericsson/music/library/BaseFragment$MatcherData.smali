.class public Lcom/sonyericsson/music/library/BaseFragment$MatcherData;
.super Ljava/lang/Object;
.source "BaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/BaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MatcherData"
.end annotation


# instance fields
.field final mAuthority:Ljava/lang/String;

.field final mId:I

.field final mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    iput p1, p0, Lcom/sonyericsson/music/library/BaseFragment$MatcherData;->mId:I

    .line 413
    iput-object p2, p0, Lcom/sonyericsson/music/library/BaseFragment$MatcherData;->mPath:Ljava/lang/String;

    .line 414
    iput-object p3, p0, Lcom/sonyericsson/music/library/BaseFragment$MatcherData;->mAuthority:Ljava/lang/String;

    return-void
.end method
