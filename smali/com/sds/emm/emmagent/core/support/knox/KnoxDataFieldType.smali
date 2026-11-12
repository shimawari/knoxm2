.class public interface abstract annotation Lcom/sds/emm/emmagent/core/support/knox/KnoxDataFieldType;
.super Ljava/lang/Object;
.source "KnoxDataFieldType.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final LENGTH_VARIABLE:I


# virtual methods
.method public abstract length()I
.end method

.method public abstract priority()I
.end method

.method public abstract shortenId()Ljava/lang/String;
.end method
