.class public final Landroidx/fragment/app/strictmode/FragmentStrictMode;
.super Ljava/lang/Object;
.source "FragmentStrictMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;,
        Landroidx/fragment/app/strictmode/FragmentStrictMode$OnViolationListener;,
        Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FragmentStrictMode"

.field private static defaultPolicy:Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    sget-object v0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;->LAX:Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    sput-object v0, Landroidx/fragment/app/strictmode/FragmentStrictMode;->defaultPolicy:Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultPolicy()Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;
    .locals 1

    .line 267
    sget-object v0, Landroidx/fragment/app/strictmode/FragmentStrictMode;->defaultPolicy:Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    return-object v0
.end method

.method private static getNearestPolicy(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;
    .locals 2
    .param p0, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 281
    :goto_0
    if-eqz p0, :cond_1

    .line 282
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 284
    .local v0, "fragmentManager":Landroidx/fragment/app/FragmentManager;
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getStrictModePolicy()Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 285
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getStrictModePolicy()Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    move-result-object v1

    return-object v1

    .line 288
    .end local v0    # "fragmentManager":Landroidx/fragment/app/FragmentManager;
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    goto :goto_0

    .line 290
    :cond_1
    sget-object v0, Landroidx/fragment/app/strictmode/FragmentStrictMode;->defaultPolicy:Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    return-object v0
.end method

.method private static handlePolicyViolation(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;Landroidx/fragment/app/strictmode/Violation;)V
    .locals 4
    .param p0, "policy"    # Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;
    .param p1, "violation"    # Landroidx/fragment/app/strictmode/Violation;

    .line 468
    invoke-virtual {p1}, Landroidx/fragment/app/strictmode/Violation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 469
    .local v0, "fragment":Landroidx/fragment/app/Fragment;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 471
    .local v1, "fragmentName":Ljava/lang/String;
    invoke-static {p0}, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;->access$100(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;)Ljava/util/Set;

    move-result-object v2

    sget-object v3, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->PENALTY_LOG:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 472
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Policy violation in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FragmentStrictMode"

    invoke-static {v3, v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 475
    :cond_0
    invoke-static {p0}, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;->access$300(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;)Landroidx/fragment/app/strictmode/FragmentStrictMode$OnViolationListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 476
    new-instance v2, Landroidx/fragment/app/strictmode/FragmentStrictMode$1;

    invoke-direct {v2, p0, p1}, Landroidx/fragment/app/strictmode/FragmentStrictMode$1;-><init>(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;Landroidx/fragment/app/strictmode/Violation;)V

    invoke-static {v0, v2}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->runOnHostThread(Landroidx/fragment/app/Fragment;Ljava/lang/Runnable;)V

    .line 484
    :cond_1
    invoke-static {p0}, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;->access$100(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;)Ljava/util/Set;

    move-result-object v2

    sget-object v3, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->PENALTY_DEATH:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 485
    new-instance v2, Landroidx/fragment/app/strictmode/FragmentStrictMode$2;

    invoke-direct {v2, v1, p1}, Landroidx/fragment/app/strictmode/FragmentStrictMode$2;-><init>(Ljava/lang/String;Landroidx/fragment/app/strictmode/Violation;)V

    invoke-static {v0, v2}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->runOnHostThread(Landroidx/fragment/app/Fragment;Ljava/lang/Runnable;)V

    .line 493
    :cond_2
    return-void
.end method

.method private static logIfDebuggingEnabled(Landroidx/fragment/app/strictmode/Violation;)V
    .locals 2
    .param p0, "violation"    # Landroidx/fragment/app/strictmode/Violation;

    .line 439
    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StrictMode violation in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 441
    invoke-virtual {p0}, Landroidx/fragment/app/strictmode/Violation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 440
    const-string v1, "FragmentManager"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 444
    :cond_0
    return-void
.end method

.method public static onFragmentReuse(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 4
    .param p0, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p1, "previousWho"    # Ljava/lang/String;

    .line 296
    new-instance v0, Landroidx/fragment/app/strictmode/FragmentReuseViolation;

    invoke-direct {v0, p0, p1}, Landroidx/fragment/app/strictmode/FragmentReuseViolation;-><init>(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 297
    .local v0, "violation":Landroidx/fragment/app/strictmode/Violation;
    invoke-static {v0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->logIfDebuggingEnabled(Landroidx/fragment/app/strictmode/Violation;)V

    .line 299
    invoke-static {p0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->getNearestPolicy(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    move-result-object v1

    .line 300
    .local v1, "policy":Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;
    invoke-static {v1}, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;->access$100(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;)Ljava/util/Set;

    move-result-object v2

    sget-object v3, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->DETECT_FRAGMENT_REUSE:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 302
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 301
    invoke-static {v1, v2, v3}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->shouldHandlePolicyViolation(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 303
    invoke-static {v1, v0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->handlePolicyViolation(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;Landroidx/fragment/app/strictmode/Violation;)V

    .line 305
    :cond_0
    return-void
.end method

.method public static onFragmentTagUsage(Landroidx/fragment/app/Fragment;Landroid/view/ViewGroup;)V
    .locals 4
    .param p0, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p1, "container"    # Landroid/view/ViewGroup;

    .line 312
    new-instance v0, Landroidx/fragment/app/strictmode/FragmentTagUsageViolation;

    invoke-direct {v0, p0, p1}, Landroidx/fragment/app/strictmode/FragmentTagUsageViolation;-><init>(Landroidx/fragment/app/Fragment;Landroid/view/ViewGroup;)V

    .line 313
    .local v0, "violation":Landroidx/fragment/app/strictmode/Violation;
    invoke-static {v0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->logIfDebuggingEnabled(Landroidx/fragment/app/strictmode/Violation;)V

    .line 315
    invoke-static {p0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->getNearestPolicy(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    move-result-object v1

    .line 316
    .local v1, "policy":Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;
    invoke-static {v1}, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;->access$100(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;)Ljava/util/Set;

    move-result-object v2

    sget-object v3, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->DETECT_FRAGMENT_TAG_USAGE:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 318
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 317
    invoke-static {v1, v2, v3}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->shouldHandlePolicyViolation(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 319
    invoke-static {v1, v0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->handlePolicyViolation(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;Landroidx/fragment/app/strictmode/Violation;)V

    .line 321
    :cond_0
    return-void
.end method

.method public static onGetRetainInstanceUsage(Landroidx/fragment/app/Fragment;)V
    .locals 4
    .param p0, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 340
    new-instance v0, Landroidx/fragment/app/strictmode/GetRetainInstanceUsageViolation;

    invoke-direct {v0, p0}, Landroidx/fragment/app/strictmode/GetRetainInstanceUsageViolation;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 341
    .local v0, "violation":Landroidx/fragment/app/strictmode/Violation;
    invoke-static {v0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->logIfDebuggingEnabled(Landroidx/fragment/app/strictmode/Violation;)V

    .line 343
    invoke-static {p0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->getNearestPolicy(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    move-result-object v1

    .line 344
    .local v1, "policy":Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;
    invoke-static {v1}, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;->access$100(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;)Ljava/util/Set;

    move-result-object v2

    sget-object v3, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->DETECT_RETAIN_INSTANCE_USAGE:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 346
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 345
    invoke-static {v1, v2, v3}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->shouldHandlePolicyViolation(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 347
    invoke-static {v1, v0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->handlePolicyViolation(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;Landroidx/fragment/app/strictmode/Violation;)V

    .line 349
    :cond_0
    return-void
.end method

.method public static onGetTargetFragmentRequestCodeUsage(Landroidx/fragment/app/Fragment;)V
    .locals 4
    .param p0, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 400
    new-instance v0, Landroidx/fragment/app/strictmode/GetTargetFragmentRequestCodeUsageViolation;

    invoke-direct {v0, p0}, Landroidx/fragment/app/strictmode/GetTargetFragmentRequestCodeUsageViolation;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 401
    .local v0, "violation":Landroidx/fragment/app/strictmode/Violation;
    invoke-static {v0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->logIfDebuggingEnabled(Landroidx/fragment/app/strictmode/Violation;)V

    .line 403
    invoke-static {p0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->getNearestPolicy(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    move-result-object v1

    .line 404
    .local v1, "policy":Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;
    invoke-static {v1}, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;->access$100(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;)Ljava/util/Set;

    move-result-object v2

    sget-object v3, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->DETECT_TARGET_FRAGMENT_USAGE:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 406
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 405
    invoke-static {v1, v2, v3}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->shouldHandlePolicyViolation(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 407
    invoke-static {v1, v0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->handlePolicyViolation(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;Landroidx/fragment/app/strictmode/Violation;)V

    .line 409
    :cond_0
    return-void
.end method

.method public static onGetTargetFragmentUsage(Landroidx/fragment/app/Fragment;)V
    .locals 4
    .param p0, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 386
    new-instance v0, Landroidx/fragment/app/strictmode/GetTargetFragmentUsageViolation;

    invoke-direct {v0, p0}, Landroidx/fragment/app/strictmode/GetTargetFragmentUsageViolation;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 387
    .local v0, "violation":Landroidx/fragment/app/strictmode/Violation;
    invoke-static {v0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->logIfDebuggingEnabled(Landroidx/fragment/app/strictmode/Violation;)V

    .line 389
    invoke-static {p0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->getNearestPolicy(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    move-result-object v1

    .line 390
    .local v1, "policy":Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;
    invoke-static {v1}, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;->access$100(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;)Ljava/util/Set;

    move-result-object v2

    sget-object v3, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->DETECT_TARGET_FRAGMENT_USAGE:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 392
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 391
    invoke-static {v1, v2, v3}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->shouldHandlePolicyViolation(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 393
    invoke-static {v1, v0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->handlePolicyViolation(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;Landroidx/fragment/app/strictmode/Violation;)V

    .line 395
    :cond_0
    return-void
.end method

.method static onPolicyViolation(Landroidx/fragment/app/strictmode/Violation;)V
    .locals 4
    .param p0, "violation"    # Landroidx/fragment/app/strictmode/Violation;

    .line 429
    invoke-static {p0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->logIfDebuggingEnabled(Landroidx/fragment/app/strictmode/Violation;)V

    .line 431
    invoke-virtual {p0}, Landroidx/fragment/app/strictmode/Violation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 432
    .local v0, "fragment":Landroidx/fragment/app/Fragment;
    invoke-static {v0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->getNearestPolicy(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    move-result-object v1

    .line 433
    .local v1, "policy":Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->shouldHandlePolicyViolation(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 434
    invoke-static {v1, p0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->handlePolicyViolation(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;Landroidx/fragment/app/strictmode/Violation;)V

    .line 436
    :cond_0
    return-void
.end method

.method public static onSetRetainInstanceUsage(Landroidx/fragment/app/Fragment;)V
    .locals 4
    .param p0, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 326
    new-instance v0, Landroidx/fragment/app/strictmode/SetRetainInstanceUsageViolation;

    invoke-direct {v0, p0}, Landroidx/fragment/app/strictmode/SetRetainInstanceUsageViolation;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 327
    .local v0, "violation":Landroidx/fragment/app/strictmode/Violation;
    invoke-static {v0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->logIfDebuggingEnabled(Landroidx/fragment/app/strictmode/Violation;)V

    .line 329
    invoke-static {p0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->getNearestPolicy(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    move-result-object v1

    .line 330
    .local v1, "policy":Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;
    invoke-static {v1}, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;->access$100(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;)Ljava/util/Set;

    move-result-object v2

    sget-object v3, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->DETECT_RETAIN_INSTANCE_USAGE:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 332
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 331
    invoke-static {v1, v2, v3}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->shouldHandlePolicyViolation(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 333
    invoke-static {v1, v0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->handlePolicyViolation(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;Landroidx/fragment/app/strictmode/Violation;)V

    .line 335
    :cond_0
    return-void
.end method

.method public static onSetTargetFragmentUsage(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;I)V
    .locals 4
    .param p0, "violatingFragment"    # Landroidx/fragment/app/Fragment;
    .param p1, "targetFragment"    # Landroidx/fragment/app/Fragment;
    .param p2, "requestCode"    # I

    .line 371
    new-instance v0, Landroidx/fragment/app/strictmode/SetTargetFragmentUsageViolation;

    invoke-direct {v0, p0, p1, p2}, Landroidx/fragment/app/strictmode/SetTargetFragmentUsageViolation;-><init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;I)V

    .line 373
    .local v0, "violation":Landroidx/fragment/app/strictmode/Violation;
    invoke-static {v0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->logIfDebuggingEnabled(Landroidx/fragment/app/strictmode/Violation;)V

    .line 375
    invoke-static {p0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->getNearestPolicy(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    move-result-object v1

    .line 376
    .local v1, "policy":Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;
    invoke-static {v1}, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;->access$100(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;)Ljava/util/Set;

    move-result-object v2

    sget-object v3, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->DETECT_TARGET_FRAGMENT_USAGE:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 378
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 377
    invoke-static {v1, v2, v3}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->shouldHandlePolicyViolation(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 379
    invoke-static {v1, v0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->handlePolicyViolation(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;Landroidx/fragment/app/strictmode/Violation;)V

    .line 381
    :cond_0
    return-void
.end method

.method public static onSetUserVisibleHint(Landroidx/fragment/app/Fragment;Z)V
    .locals 4
    .param p0, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p1, "isVisibleToUser"    # Z

    .line 354
    new-instance v0, Landroidx/fragment/app/strictmode/SetUserVisibleHintViolation;

    invoke-direct {v0, p0, p1}, Landroidx/fragment/app/strictmode/SetUserVisibleHintViolation;-><init>(Landroidx/fragment/app/Fragment;Z)V

    .line 355
    .local v0, "violation":Landroidx/fragment/app/strictmode/Violation;
    invoke-static {v0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->logIfDebuggingEnabled(Landroidx/fragment/app/strictmode/Violation;)V

    .line 357
    invoke-static {p0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->getNearestPolicy(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    move-result-object v1

    .line 358
    .local v1, "policy":Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;
    invoke-static {v1}, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;->access$100(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;)Ljava/util/Set;

    move-result-object v2

    sget-object v3, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->DETECT_SET_USER_VISIBLE_HINT:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 360
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 359
    invoke-static {v1, v2, v3}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->shouldHandlePolicyViolation(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 361
    invoke-static {v1, v0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->handlePolicyViolation(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;Landroidx/fragment/app/strictmode/Violation;)V

    .line 363
    :cond_0
    return-void
.end method

.method public static onWrongFragmentContainer(Landroidx/fragment/app/Fragment;Landroid/view/ViewGroup;)V
    .locals 4
    .param p0, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p1, "container"    # Landroid/view/ViewGroup;

    .line 416
    new-instance v0, Landroidx/fragment/app/strictmode/WrongFragmentContainerViolation;

    invoke-direct {v0, p0, p1}, Landroidx/fragment/app/strictmode/WrongFragmentContainerViolation;-><init>(Landroidx/fragment/app/Fragment;Landroid/view/ViewGroup;)V

    .line 417
    .local v0, "violation":Landroidx/fragment/app/strictmode/Violation;
    invoke-static {v0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->logIfDebuggingEnabled(Landroidx/fragment/app/strictmode/Violation;)V

    .line 419
    invoke-static {p0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->getNearestPolicy(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    move-result-object v1

    .line 420
    .local v1, "policy":Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;
    invoke-static {v1}, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;->access$100(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;)Ljava/util/Set;

    move-result-object v2

    sget-object v3, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->DETECT_WRONG_FRAGMENT_CONTAINER:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 422
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 421
    invoke-static {v1, v2, v3}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->shouldHandlePolicyViolation(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 423
    invoke-static {v1, v0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->handlePolicyViolation(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;Landroidx/fragment/app/strictmode/Violation;)V

    .line 425
    :cond_0
    return-void
.end method

.method private static runOnHostThread(Landroidx/fragment/app/Fragment;Ljava/lang/Runnable;)V
    .locals 3
    .param p0, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 496
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 497
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getHost()Landroidx/fragment/app/FragmentHostCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 498
    .local v0, "handler":Landroid/os/Handler;
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 499
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 501
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 503
    .end local v0    # "handler":Landroid/os/Handler;
    :goto_0
    goto :goto_1

    .line 504
    :cond_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 506
    :goto_1
    return-void
.end method

.method public static setDefaultPolicy(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;)V
    .locals 0
    .param p0, "policy"    # Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    .line 277
    sput-object p0, Landroidx/fragment/app/strictmode/FragmentStrictMode;->defaultPolicy:Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    .line 278
    return-void
.end method

.method private static shouldHandlePolicyViolation(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 4
    .param p0, "policy"    # Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/strictmode/Violation;",
            ">;)Z"
        }
    .end annotation

    .line 450
    .local p1, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/fragment/app/Fragment;>;"
    .local p2, "violationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/fragment/app/strictmode/Violation;>;"
    nop

    .line 451
    invoke-static {p0}, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;->access$200(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 452
    .local v0, "violationsToBypass":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Landroidx/fragment/app/strictmode/Violation;>;>;"
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 453
    return v1

    .line 456
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroidx/fragment/app/strictmode/Violation;

    if-eq v2, v3, :cond_1

    .line 457
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 458
    const/4 v1, 0x0

    return v1

    .line 461
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v1, v2

    return v1
.end method
