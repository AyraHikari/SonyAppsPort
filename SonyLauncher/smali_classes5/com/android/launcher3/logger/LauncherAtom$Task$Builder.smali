.class public final Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LauncherAtom.java"

# interfaces
.implements Lcom/android/launcher3/logger/LauncherAtom$TaskOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom$Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/launcher3/logger/LauncherAtom$Task;",
        "Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;",
        ">;",
        "Lcom/android/launcher3/logger/LauncherAtom$TaskOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 9603
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Task;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/logger/LauncherAtom$Task;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 9604
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/logger/LauncherAtom$Task$Builder-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearComponentName()Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;
    .locals 1

    .line 9691
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;->copyOnWrite()V

    .line 9692
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Task;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$Task;->-$$Nest$mclearComponentName(Lcom/android/launcher3/logger/LauncherAtom$Task;)V

    .line 9693
    return-object p0
.end method

.method public clearIndex()Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;
    .locals 1

    .line 9731
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;->copyOnWrite()V

    .line 9732
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Task;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$Task;->-$$Nest$mclearIndex(Lcom/android/launcher3/logger/LauncherAtom$Task;)V

    .line 9733
    return-object p0
.end method

.method public clearPackageName()Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;
    .locals 1

    .line 9642
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;->copyOnWrite()V

    .line 9643
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Task;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$Task;->-$$Nest$mclearPackageName(Lcom/android/launcher3/logger/LauncherAtom$Task;)V

    .line 9644
    return-object p0
.end method

.method public getComponentName()Ljava/lang/String;
    .locals 1

    .line 9668
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Task;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Task;->getComponentName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getComponentNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 9676
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Task;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Task;->getComponentNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 9717
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Task;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Task;->getIndex()I

    move-result v0

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 9619
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Task;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Task;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 9627
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Task;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Task;->getPackageNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasComponentName()Z
    .locals 1

    .line 9661
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Task;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Task;->hasComponentName()Z

    move-result v0

    return v0
.end method

.method public hasIndex()Z
    .locals 1

    .line 9710
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Task;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Task;->hasIndex()Z

    move-result v0

    return v0
.end method

.method public hasPackageName()Z
    .locals 1

    .line 9612
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Task;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Task;->hasPackageName()Z

    move-result v0

    return v0
.end method

.method public setComponentName(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 9683
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;->copyOnWrite()V

    .line 9684
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Task;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Task;->-$$Nest$msetComponentName(Lcom/android/launcher3/logger/LauncherAtom$Task;Ljava/lang/String;)V

    .line 9685
    return-object p0
.end method

.method public setComponentNameBytes(Lcom/google/protobuf/ByteString;)Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 9700
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;->copyOnWrite()V

    .line 9701
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Task;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Task;->-$$Nest$msetComponentNameBytes(Lcom/android/launcher3/logger/LauncherAtom$Task;Lcom/google/protobuf/ByteString;)V

    .line 9702
    return-object p0
.end method

.method public setIndex(I)Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 9723
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;->copyOnWrite()V

    .line 9724
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Task;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Task;->-$$Nest$msetIndex(Lcom/android/launcher3/logger/LauncherAtom$Task;I)V

    .line 9725
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 9634
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;->copyOnWrite()V

    .line 9635
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Task;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Task;->-$$Nest$msetPackageName(Lcom/android/launcher3/logger/LauncherAtom$Task;Ljava/lang/String;)V

    .line 9636
    return-object p0
.end method

.method public setPackageNameBytes(Lcom/google/protobuf/ByteString;)Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 9651
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;->copyOnWrite()V

    .line 9652
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Task;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Task;->-$$Nest$msetPackageNameBytes(Lcom/android/launcher3/logger/LauncherAtom$Task;Lcom/google/protobuf/ByteString;)V

    .line 9653
    return-object p0
.end method
